package com.example.logistics.controller;

import com.example.logistics.dto.CenterCreateRequest;
import com.example.logistics.dto.CenterResponse;
import com.example.logistics.dto.CenterSearchCondition;
import com.example.logistics.dto.CenterUpdateRequest;
import com.example.logistics.service.CenterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/centers")
public class CenterController {
    private final CenterService centerService;

    @Autowired
    public CenterController(CenterService centerService) {
        this.centerService = centerService;
    }

    @PostMapping
    public void createCenter(@RequestBody CenterCreateRequest createRequest) {
        // Create center logic
    }

    @GetMapping
    public List<CenterResponse> searchCenters(CenterSearchCondition searchCondition) {
        return centerService.searchCenters(searchCondition);
    }

    @GetMapping("/{id}")
    public CenterResponse getCenter(@PathVariable Long id) {
        // Get center logic
        return null;
    }

    @PutMapping("/{id}")
    public void updateCenter(@PathVariable Long id, @RequestBody CenterUpdateRequest updateRequest) {
        // Update center logic
    }

    @DeleteMapping("/{id}")
    public void deleteCenter(@PathVariable Long id) {
        // Delete center logic
    }
}
