package ch04.com.dao;

public class GuGuDan {
	
	private static final int FIRSTNUM = 5; 
	private int[] resultArray;
	
	public int[] process() {
		
		resultArray = new int[9];
		
		for (int i=0; i < 9; i++) {
			
			// this.resultArray = new int[9];
			// 위와 같이 for문 안에서 선언하면 계속 초기화 되버림.
			// 그러니까 for 문 밖에서 선언해야 함.
			
			resultArray[i] = FIRSTNUM*(i+1);
			
			System.out.println(resultArray[i]);									
						
		}
				
		return resultArray;
		
	}
	
	public void testProcess() {
		
		System.out.println("-------------------------------------------");
		System.out.println("결과배열의 크기 : " + resultArray.length); // 9.
		System.out.println(resultArray[5]); // 30.
		System.out.println("-------------------------------------------");
		
		for(int i = 0; i < resultArray.length; i++) {
			
			System.out.println(resultArray[i]);
		
		}
		
	}
	
	

}