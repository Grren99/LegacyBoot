package com.demo.security.controller.enc;

import com.demo.security.config.Aes256.Gcm;
import com.demo.security.model.Enc;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/enc")
public class EncController {

    @Value("${HANSU_ENC_KEY}")
    String key;

    @GetMapping
    public String enc() {
        return "enc/enc";
    }

    @PostMapping("/encoding")
    public ResponseEntity<?> encoding(Enc enc) {

        String encodingText = Gcm.encrypt(key, enc.getText());
        log.info("encodingText: {}", encodingText);
        return new ResponseEntity<>(encodingText, HttpStatus.OK);
    }

    @PostMapping("/decoding")
    public ResponseEntity<?> decoding(Enc enc) {

        String decodingText = Gcm.decrypt(key, enc.getText());
        log.info("decodingText: {}", decodingText);
        return new ResponseEntity<>(decodingText, HttpStatus.OK);
    }

}
