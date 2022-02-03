package com.hot.shop.notice.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.hot.shop.farm.model.vo.Farm;
import com.hot.shop.member.model.vo.Member;
import com.hot.shop.notice.model.service.NoticeService;
import com.hot.shop.notice.model.vo.Notice;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService nService;
	
	//공지사항 리스트 페이지
	@RequestMapping(value = "/notice/noticeListPage.do",method = RequestMethod.GET)
	public ModelAndView noticeListPage(ModelAndView mav) {
		
		ArrayList<Notice> list = nService.noticeList();
		mav.addObject("list", list);
		mav.setViewName("notice/NoticeList");
		return mav;
	}
	
	//공지사항 글쓰기 페이지
	@RequestMapping(value = "/notice/noticeWritePage.do",method = RequestMethod.GET)
	public String noticeWritePage(@SessionAttribute Farm farm) {
		return "notice/NoticeWrite";
	}
	
	//공지사항 글쓰기
	@RequestMapping(value = "/notice/noticeWrite.do",method = RequestMethod.POST)
	public ModelAndView noticeWrite(Notice n,ModelAndView mav,@SessionAttribute Farm farm) {
		
		int result = nService.insertWrite(n);
		
		if(result > 0) {
			mav.addObject("location", "/notice/noticeListPage.do");
		}else {
			mav.addObject("location", "/notice/noticeWritePage.do");
		}
		mav.setViewName("commons/msg");
		return mav;
	}
	
	
	//공지사항 조회(뷰) 페이지
	@RequestMapping(value = "/notice/NoticeView.do",method = RequestMethod.GET)
	public ModelAndView NoticeViewPage(@RequestParam int noticeNo,ModelAndView mav) {
		Notice n = nService.NoticeViewPage(noticeNo);
		
		mav.addObject("notice", n);
		mav.setViewName("notice/NoticeView");
		return mav;
	}
	
	//공지사항 수정 페이지로 이동
	@RequestMapping(value = "/notice/NoticeUpdatePage.do", method = RequestMethod.GET)
	public String noticeUpdatePage(@RequestParam int noticeNo) {
		return "notice/NoticeUpdate";
	};
	
	//공지사항 수정
	@RequestMapping(value="/notice/NoticeUpdate.do", method = RequestMethod.POST)
	public ModelAndView NoticeUpdate(Notice n, ModelAndView mav,@SessionAttribute Farm farm) {		
		System.out.println(n);
		return mav;
	};
	
	
}
