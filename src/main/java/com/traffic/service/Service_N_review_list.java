package com.traffic.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.traffic.dao.user.IDao_Notice;
import com.traffic.dto.user.DTO_Notice;
import com.traffic.usetools.SearchVO;

public class Service_N_review_list implements Interface_TrafficService {

	private SqlSession sqlsession;
	
	public Service_N_review_list(SqlSession sqlsession) {
		this.sqlsession = sqlsession;
	}
	
	@Override
	public void execute(Model model) {
		System.out.println("n_review execute");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String keyword = request.getParameter("keyword") != null ? request.getParameter("keyword") : "";
		IDao_Notice dao = sqlsession.getMapper(IDao_Notice.class);
		
//		paging ó��
//		�˻���� ���� ����
		int currentPage = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;

		SearchVO vo = new SearchVO();
//		���� ������ ���ϴ� ��
		vo.setPage(currentPage);
		
//		�˻��� ����� ���� ���ϴ� ��
		vo.pageCalculate(dao.pageCalculate_review(keyword));
		
		List<DTO_Notice> dto = dao.review_list(keyword, vo.getRowStart(), vo.getRowEnd());
		
		model.addAttribute("dto", dto);
		model.addAttribute("keyword", keyword);
		model.addAttribute("vo", vo);
	}

}