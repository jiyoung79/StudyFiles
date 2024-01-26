package day06;

public class Assign_operator {
	public static void main(String[] args) {
		int a = 3;
		int b = 5;
		
		b = a; // b = 3
		System.out.println(b);
		
		a += 1; // a=a+1
		System.out.println(a);
		
		a /= 2; // a=a/2
		System.out.println(a);
		
		a *= a;
		System.out.println(a);
	}
}

/*
Console

3
4
2
4

*/
