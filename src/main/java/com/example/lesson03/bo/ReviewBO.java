package com.example.lesson03.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.lesson03.dao.ReviewDAO;
import com.example.lesson03.model.Review;

@Service
public class ReviewBO {

	@Autowired
	private ReviewDAO reviewdao;

	// int는 null이 허용되지 않는다.
	// Integer를 넣으면 null이 허용되기 때문에 있으면 주고 없으면 알아서 줄게 가 된다.
	// 필수이면 프리미티브 타입, 비필수이면 박시드 또는 래퍼 클래스로
	public Review getReview(int id) {
		return reviewdao.selectReview(id);
	}
}
