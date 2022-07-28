
public class Method3 {

	//main is always starting point of the program
	public static void main(String args[]) {
		int x=Integer.parseInt("3409097144");
		int result=add(10,23);
		System.out.println("message = "+result);
		
		result=add(20,23);
		System.out.println("message = "+result);
		
		result=add(30,23);
		System.out.println("message = "+result);
	}
	
	static int add(int num1,int num2) {
		int tempa=num1+num2;
		return tempa;
	}
}
