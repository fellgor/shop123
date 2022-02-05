package com.hot.shop.question.model.vo;

import java.sql.Timestamp;

public class QuestionPhoto {

	private int questionPhotoNo;
	private String questionPhotoOriginal;
	private String questionPhotoChange;
	private String questionPhotoFilePath;
	private long questionPhotoFileSize;
	//resources에 각자 회원별로 사진 폴더 만들어서 구현하려고 한다(ex: test0001 폴더 안에 그 회원이 올린 사진들을 관리하는 식으로 
	//그러려면 UserNo가 필요할지도 모르는데, DB를 추가해야 하나?
	private Timestamp questionPhotoUpdateTime;
	private char questionPhotoDelYN;
	private char questionPhotoUseYN;
	
	public QuestionPhoto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QuestionPhoto(int questionPhotoNo, String questionPhotoOriginal, String questionPhotoChange,
			String questionPhotoFilePath, long questionPhotoFileSize, Timestamp questionPhotoUpdateTime,
			char questionPhotoDelYN, char questionPhotoUseYN) {
		super();
		this.questionPhotoNo = questionPhotoNo;
		this.questionPhotoOriginal = questionPhotoOriginal;
		this.questionPhotoChange = questionPhotoChange;
		this.questionPhotoFilePath = questionPhotoFilePath;
		this.questionPhotoFileSize = questionPhotoFileSize;
		this.questionPhotoUpdateTime = questionPhotoUpdateTime;
		this.questionPhotoDelYN = questionPhotoDelYN;
		this.questionPhotoUseYN = questionPhotoUseYN;
	}

	public int getQuestionPhotoNo() {
		return questionPhotoNo;
	}

	public void setQuestionPhotoNo(int questionPhotoNo) {
		this.questionPhotoNo = questionPhotoNo;
	}

	public String getQuestionPhotoOriginal() {
		return questionPhotoOriginal;
	}

	public void setQuestionPhotoOriginal(String questionPhotoOriginal) {
		this.questionPhotoOriginal = questionPhotoOriginal;
	}

	public String getQuestionPhotoChange() {
		return questionPhotoChange;
	}

	public void setQuestionPhotoChange(String questionPhotoChange) {
		this.questionPhotoChange = questionPhotoChange;
	}

	public String getQuestionPhotoFilePath() {
		return questionPhotoFilePath;
	}

	public void setQuestionPhotoFilePath(String questionPhotoFilePath) {
		this.questionPhotoFilePath = questionPhotoFilePath;
	}

	public long getQuestionPhotoFileSize() {
		return questionPhotoFileSize;
	}

	public void setQuestionPhotoFileSize(long questionPhotoFileSize) {
		this.questionPhotoFileSize = questionPhotoFileSize;
	}

	public Timestamp getQuestionPhotoUpdateTime() {
		return questionPhotoUpdateTime;
	}

	public void setQuestionPhotoUpdateTime(Timestamp questionPhotoUpdateTime) {
		this.questionPhotoUpdateTime = questionPhotoUpdateTime;
	}

	public char getQuestionPhotoDelYN() {
		return questionPhotoDelYN;
	}

	public void setQuestionPhotoDelYN(char questionPhotoDelYN) {
		this.questionPhotoDelYN = questionPhotoDelYN;
	}

	public char getQuestionPhotoUseYN() {
		return questionPhotoUseYN;
	}

	public void setQuestionPhotoUseYN(char questionPhotoUseYN) {
		this.questionPhotoUseYN = questionPhotoUseYN;
	}

	@Override
	public String toString() {
		return "QuestionPhoto [questionPhotoNo=" + questionPhotoNo + ", questionPhotoOriginal=" + questionPhotoOriginal
				+ ", questionPhotoChange=" + questionPhotoChange + ", questionPhotoFilePath=" + questionPhotoFilePath
				+ ", questionPhotoFileSize=" + questionPhotoFileSize + ", questionPhotoUpdateTime="
				+ questionPhotoUpdateTime + ", questionPhotoDelYN=" + questionPhotoDelYN + ", questionPhotoUseYN="
				+ questionPhotoUseYN + "]";
	}
	
}
