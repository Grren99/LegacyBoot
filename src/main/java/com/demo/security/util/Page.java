package com.demo.security.util;

import java.util.List;

public class Page<T> {
    private List<T> content;
    private int currentPage;
    private int pageSize;
    private int totalItems;
    private int totalPages;

    public Page(List<T> content, int currentPage, int pageSize, int totalItems, int totalPages) {
        this.content = content;
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.totalItems = totalItems;
        this.totalPages = totalPages;
    }

    public List<T> getContent() {
        return content;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public int getTotalItems() {
        return totalItems;
    }

    public int getTotalPages() {
        return totalPages;
    }
}
