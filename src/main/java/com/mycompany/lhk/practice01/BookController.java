package com.mycompany.lhk.practice01;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.BindingResultUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/lhk/*")
public class BookController {
	
	List<Book> bookList = new ArrayList<Book>();
	
	@RequestMapping(value="/input", method=RequestMethod.GET)
	public void showInputView() {
		
	}
	
	@RequestMapping(value="/input", method=RequestMethod.POST)
	public String addBook(@Valid Book book, BindingResult bindingResult) {
		//book를 검사하면 bindingResult에 결과가 들어감
		//@Valid Member member - BindingResult bindingResult 순서가 중요함. 그 뒤에 필요한 매개 변수들 놓기
		System.out.println("도착");
		
		if(bindingResult.hasErrors()) {
			return "input";
		}
		
		bookList.add(book);

		return "redirect:/";
		
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public List<Book> showList() {
		
		return bookList;	
	} 
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public Book detail(@RequestParam String bookid) {
		Book selectBook= null;
	
		for (Book book : bookList) {
			if(book.getBookid().contentEquals(bookid)) {
				selectBook = book;
				break;
			}
		}
		
		return selectBook;
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public String update(@ModelAttribute Book book) {	
		for (Book bookInList : bookList) {
			
			if(bookInList.getBookid().equals(book.getBookid())) {
				
				bookInList.setBookname(book.getBookname());
				bookInList.setPrice(book.getPrice());
				bookInList.setPublisher(book.getPublisher());
				bookInList.setDescription(book.getDescription());
				bookInList.setImagepath(book.getImagepath());
			}			
		}
		return "list";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete(@RequestParam String bookid) {
		System.out.println(bookid);
		
		for (Book book : bookList) {
			if(book.getBookid().equals(bookid)) {
				System.out.println("도착");
				bookList.remove(book);
				break;
			}
		}
		return "list";
	}
}