package day04;

public class Operator_ch3 {
	public static void main(String[] args) {
		int a = 1;
		System.out.println(a);
		
		a++; // a값 1 증가 : 후위형
		System.out.println(a); // 이때, a는 2
		System.out.println(++a); 	// a의 값 1 증가, 전위형 : 증가가 먼저
		System.out.println(a++); 	// a의 값 1 증가, 후위형 : 증가가 나중에
		System.out.println(a); 		// 11line에서 a값이 증가되었으므로 4가 나옴
	}

}

/*
Console

1
2
3
3
4

*/
