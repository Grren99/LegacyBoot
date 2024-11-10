package com.demo.security.config.Aes256;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.Base64;

@Slf4j
@Configuration
public class Gcm {

    public static final int GCM_IV_LENGTH = 16;
    public static final int GCM_TAG_LENGTH = 128;

    // 암호화 메소드
    public static String encrypt(String key, String plainText){
        byte[] iv = new byte[GCM_IV_LENGTH];
        SecureRandom random = new SecureRandom();
        random.nextBytes(iv); // 랜덤한 IV 생성
        byte[] encryptedIvAndText = null;

        try {
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            SecretKey secretKey = new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), "AES");
            GCMParameterSpec spec = new GCMParameterSpec(GCM_TAG_LENGTH, iv);

            cipher.init(Cipher.ENCRYPT_MODE, secretKey, spec);
            byte[] encryptedText = cipher.doFinal(plainText.getBytes(StandardCharsets.UTF_8));

            // IV와 암호화된 텍스트를 결합
            encryptedIvAndText = new byte[iv.length + encryptedText.length];
            System.arraycopy(iv, 0, encryptedIvAndText, 0, iv.length);
            System.arraycopy(encryptedText, 0, encryptedIvAndText, iv.length, encryptedText.length);
        } catch (Exception e) {
            log.error("Encryption error: ", e);  // 예외 상세 로깅
            return null;  // 오류 발생 시 null 반환
        }

        return Base64.getEncoder().encodeToString(encryptedIvAndText);  // 성공적으로 암호화된 텍스트 반환
    }

    // 복호화 메소드
    public static String decrypt(String key, String encryptedText){
        try {
            byte[] decodedText = Base64.getDecoder().decode(encryptedText);

            byte[] iv = new byte[GCM_IV_LENGTH];
            System.arraycopy(decodedText, 0, iv, 0, iv.length);
            byte[] encryptedData = new byte[decodedText.length - iv.length];
            System.arraycopy(decodedText, iv.length, encryptedData, 0, encryptedData.length);

            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            SecretKey secretKey = new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), "AES");
            GCMParameterSpec spec = new GCMParameterSpec(GCM_TAG_LENGTH, iv);

            cipher.init(Cipher.DECRYPT_MODE, secretKey, spec);
            byte[] decryptedText = cipher.doFinal(encryptedData);

            return new String(decryptedText, StandardCharsets.UTF_8);
        } catch (Exception e) {
            log.error("Decryption error: ", e);  // 예외 상세 로깅
            return null;  // 오류 발생 시 null 반환
        }
    }
}
