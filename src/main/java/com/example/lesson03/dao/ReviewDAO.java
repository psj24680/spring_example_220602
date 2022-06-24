package com.example.lesson03.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.example.lesson03.model.Review;

@Repository
public interface ReviewDAO {
	public Review selectReview(@Param("id") int id); // 파라미터가 1개일 땐 안 써도 되지만 여러 개 일땐 필수
}
