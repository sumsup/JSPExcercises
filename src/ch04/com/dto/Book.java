package ch04.com.dto;

public class Book {
	
	private String bookId; // 도서 아이디.
	private String name; // 도서명.
	private Integer unitPrice; // 가격.
	private String author; // 저자.
	private String description; // 설명.
	private String publisher; // 출판사.
	private String category; // 분류.
	private Integer unitInStock; // 재고 수.
	private Integer totalPages; // 페이지 수.
	private String releaseDate; // 출판일(월/년).
	private String condition; // 신규 도서 or 중고 도서 or E-Book.
	
	public Book() {
		super();
	}
		
	public Book(String bookId, String name, Integer unitPrice) {
		super();
		this.bookId = bookId;
		this.name = name;
		this.unitPrice = unitPrice;
	}

	public String getBookId() {
		return bookId;
	}
	public String getName() {
		return name;
	}
	public Integer getUnitPrice() {
		return unitPrice;
	}
	public String getAuthor() {
		return author;
	}
	public String getDescription() {
		return description;
	}
	public String getPublisher() {
		return publisher;
	}
	public String getCategory() {
		return category;
	}
	public Integer getUnitInStock() {
		return unitInStock;
	}
	public Integer getTotalPages() {
		return totalPages;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public String getCondition() {
		return condition;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public void setUnitInStock(Integer unitInStock) {
		this.unitInStock = unitInStock;
	}
	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	

}
