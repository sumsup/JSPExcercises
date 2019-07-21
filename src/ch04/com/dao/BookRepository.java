package ch04.com.dao;

import java.util.ArrayList;

import ch04.com.dto.Book;

public class BookRepository {

	private ArrayList<Book> listOfBooks = new ArrayList<Book>(); 
	// 필드를 생성해 주고.
	// 기본 자료형은 필드를 선언만 해줘도 주입할 수 있는데 왜 ArrayList는 초기화까지 해줘야 하는가?

	public BookRepository() {
		
		Book book1 = new Book("IT COOKBOOK", "JSP 쇼핑몰", 27000);
		Book book2 = new Book("GuGu Coding", "코드로 배우는 스프링", 30000);
		Book book3 = new Book("Make Health", "호르몬 건강법", 20000);
		
		book1.setAuthor("송미영");
		book1.setPublisher("한빛 아카데미");
		book1.setDescription("JSP를 이용해서 쇼핑몰을 만들면서 배우는 입문서다. JSP의 이론을 먼저 살표보고 기본 및"
				+ " 실습 예제를 통해 개념에 대한 이해도를 높여준다. 많은 독자가 블라블라...");
		
		book2.setAuthor("구멍가게 코딩단");
		book2.setPublisher("남가람 북스");
		book2.setDescription("이 책의 주제는 Spring Framework(이하 스프링)를 이용해서 "
				+ "말 그대로 ‘웹 프로젝트’를 어떻게 진행하는지를 설명하는 책이다.");
		
		book3.setAuthor("나카시마 노부유키");
		book3.setPublisher("건강 전도사");
		book3.setDescription("건강을 좌우하는 것은 호르몬과 자율신경이다. 현대인들이 건강한 삶을 영위 할 수 있도록"
				+ "해주는 생활 건강법을 담고있다.");
		
		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);
		
	}

	public ArrayList<Book> getListOfBooks() {
		
		return listOfBooks;
		
	}
	
	
	
	
	
	
	
	
}
