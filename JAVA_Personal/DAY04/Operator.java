package day04;

public class Operator {
	public static void main(String[] args) {
		int a = 10;
		int b = 3;
		double doubleB = 3; //자동형변환
		System.out.println(a+b);
		System.out.println(a-b);
		System.out.println(a*b);
		System.out.println(a/b);
		System.out.println(a%b);
		
		System.out.println(a/doubleB);
		// 정수/실수 = 실수 (컴퓨터가 실수를 표현할 때 정확하게 표현할 수 없다.)
		//				왜? 무한한 실수의 갯수를 유한한 표현방법으로 표현하기에는 한계가 있기 때문
		System.out.println(a%doubleB); // 정수%실수 = 실수
		System.out.println(doubleB%b); // 실수%정수 = 실수
		
	}

}

/*
Console

13
7
30
3
1
3.3333333333333335
1.0
0.0

*/
