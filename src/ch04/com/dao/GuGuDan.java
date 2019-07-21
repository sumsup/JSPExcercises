package ch04.com.dao;

public class GuGuDan {
	
	private static final int FIRSTNUM = 5; 
	private int[] resultArray;
	
	public int[] process() {
		
		for (int i=0; i < 9; i++) {
			
			i++;
			resultArray = new int[9];
			resultArray[i] = FIRSTNUM*i;
			
			System.out.println(resultArray[i]);									
						
		}
		
		return resultArray;
		
	}

}