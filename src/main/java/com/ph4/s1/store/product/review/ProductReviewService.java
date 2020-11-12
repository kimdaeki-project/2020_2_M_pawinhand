package com.ph4.s1.store.product.review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ph4.s1.store.product.reviewFile.ReviewFileDAO;
import com.ph4.s1.store.product.reviewFile.ReviewFileDTO;

@Service
public class ProductReviewService {
	
	@Autowired
	private ProductReviewDAO productReviewDAO;
	
	@Autowired
	private ReviewFileDAO reviewFileDAO;
	
	public List<ProductReviewDTO> getList() throws Exception{
		List<ProductReviewDTO> ar = productReviewDAO.getList();
		for(ProductReviewDTO dto : ar) {
			ReviewFileDTO reviewFileDTO = reviewFileDAO.getFile(dto);
			if(reviewFileDTO != null) {
				dto.setFileName(reviewFileDTO.getFileName());
			}
		}
		
		return ar;
	}
}
