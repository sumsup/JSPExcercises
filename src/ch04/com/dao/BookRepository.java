package ch04.com.dao;

import java.util.ArrayList;

import ch04.com.dto.Book;

public class BookRepository {

	// 필드를 생성해 주고.
	private ArrayList<Book> listOfBooks = new ArrayList<Book>(); 
	// 기본 자료형은 필드를 선언만 해줘도 주입할 수 있는데 왜 ArrayList는 초기화까지 해줘야 하는가?

	// 싱글턴 패턴.
	// 책을 등록 했을 시, 인스턴스가 초기화 되버리면 등록한 책이 사라지기 때문에,
	// static 메서드로 만든다.
	// 생성자를 통해서 인스턴스를 생성.
	private static BookRepository instance = new BookRepository();

	public static BookRepository getInstance() {
		
		return instance;
	}
	
	public void addBook(Book book) {
		
		listOfBooks.add(book);
		
	}

	// Constructor.
	public BookRepository() {
		
		Book book1 = new Book("k1234", "JSP 쇼핑몰", 27000);
		Book book2 = new Book("k4232", "코드로 배우는 스프링", 30000);
		Book book3 = new Book("J2724", "호르몬 건강법", 20000);

		// book 1
		book1.setAuthor("송미영");
		book1.setPublisher("한빛 아카데미");
		book1.setDescription("JSP를 이용해서 쇼핑몰을 만들면서 배우는 입문서다. JSP의 이론을 먼저 살표보고 기본 및"
				+ " 실습 예제를 통해 개념에 대한 이해도를 높여준다. 많은 독자가 블라블라...");
		book1.setCategory("IT COOKBOOK");
		book1.setTotalPages(600);
		book1.setUnitInStock(2000);
		book1.setCondition("new");
		book1.setReleaseDate("2017년03월25일");
		book1.setFilename("p1234.jpg");

		// book 2
		book2.setAuthor("구멍가게 코딩단");
		book2.setPublisher("남가람 북스");
		book2.setDescription("이 책의 주제는 Spring Framework(이하 스프링)를 이용해서 "
				+ "말 그대로 ‘웹 프로젝트’를 어떻게 진행하는지를 설명하는 책이다.");
		book2.setCategory("GuGu Coding");
		book2.setTotalPages(800);
		book2.setUnitInStock(1500);
		book2.setCondition("old");
		book2.setReleaseDate("2016년11월05일");
		book2.setFilename("p5432.png");

		// book 3
		book3.setAuthor("나카시마 노부유키");
		book3.setPublisher("건강 전도사");
		book3.setDescription("건강을 좌우하는 것은 호르몬과 자율신경이다. 현대인들이 건강한 삶을 영위 할 수 있도록"
				+ "해주는 생활 건강법을 담고있다.");
		book3.setCategory("Make Health");
		book3.setTotalPages(780);
		book3.setUnitInStock(550);
		book3.setCondition("e-book");
		book3.setReleaseDate("2020년02월10일");
		book3.setFilename("p8899.jpg");

		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);
		
	}

	public ArrayList<Book> getListOfBooks() {
		
		return listOfBooks;
		
	}
	
	// 아이디에 해당하는 Book 객체를 반환.
	public Book getBookById(String bookId) {
				
		// books 를 돌면서 bookId에 해당 하는 것을 넣어서 리턴.
		Book book = new Book();
		
		ArrayList<Book> allBooks = getListOfBooks();
		
		for(int i=0; i < allBooks.size(); i++ ) {
			
			String searchBookId = allBooks.get(i).getBookId(); // ArrayList는 get으로 찾는다.
			
			if(searchBookId.equals(bookId)) {
				
				book = allBooks.get(i); // 아이디에 해당하는 책을 찾았으면 넣어주고.
				break; // 찾는 작업 중단.
				
			}
			
		}
		
		return book; // 찾은 책 객체를 반환.
		
	}
	
		
	
}
