package com.demo.security.service;

import com.demo.security.mapper.MainMapper;
import com.demo.security.model.Main;
import com.demo.security.util.Page;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MainService {

    private final MainMapper mainMapper;

    public Page<Main> getMainPage(int page, int size) {

        int offset = (page - 1) * size;
        // 총 갯수
        int totalItems = mainMapper.countTotalItems();
        // 페이지에 해당하는 데이터 조회
        List<Main> content = mainMapper.selectMainWithPaging(offset, size);

        int totalPages = (int) Math.ceil((double) totalItems / size);

        return new Page<>(content, page, size, totalItems, totalPages);
    }
}
