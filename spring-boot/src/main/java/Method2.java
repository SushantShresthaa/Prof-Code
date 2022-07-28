
public class Method2 {
	
	public static void main(String[] args) {
		add(1,2);
		add(1,3);
		add(1,4);
		add(1,5);
		add(1,6);
		add(3,7);
		
	}
	
	
	/**
	 * This method takes two input
	 * @param num1
	 * @param num2
	 */
	static void add(int num1, int num2) {
		int temp=num1+num2;
		System.out.println("sum = "+temp);
	}

}
