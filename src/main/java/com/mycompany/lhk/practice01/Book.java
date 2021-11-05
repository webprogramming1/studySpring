package com.mycompany.lhk.practice01;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Book {
	
	@Size(max=5, message="길이가 맞지 않습니다.")
	@Pattern(regexp = "^[0-9]*$", message="숫자를 입력해주세요.") 
	private String bookid;
	
	@NotEmpty
	private String bookname;
	
	@NotEmpty
	private String publisher;
	
	@Pattern(regexp = "^[0-9]*$", message="숫자를 입력해주세요.") 
	private String price;
	
	@NotEmpty
	private String description;
	
	private String imagepath;

	public String getBookid() {
		return bookid;
	}

	public void setBookid(String bookid) {
		this.bookid = bookid;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImagepath() {
		return imagepath;
	}

	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}

	/* test */

}
