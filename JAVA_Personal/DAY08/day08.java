package day08;

import java.util.Scanner;

public class day08 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("☆★신호등 프로그램☆★");
		System.out.println("빨간불:1, 노란불:2, 초록불:3");
		System.out.print("신호: ");
		int sign=sc.nextInt();
		switch(sign) {
		case 1:
			System.out.println("빨간불입니다. 정지하세요");
			break;
		case 2:
			System.out.println("노란불입니다. 브레이크 밟으세요");
			break;
		case 3:
			System.out.println("초록불입니다. 출발하세요");
			break;
		default:
			System.out.println("잘못누르셨습니다.");
			
		}
	}

}

/*
Console
1 입력시
☆★신호등 프로그램☆★
빨간불:1, 노란불:2, 초록불:3
신호: 1
빨간불입니다. 정지하세요

2 입력시
☆★신호등 프로그램☆★
빨간불:1, 노란불:2, 초록불:3
신호: 2
노란불입니다. 브레이크 밟으세요

3 입력시
☆★신호등 프로그램☆★
빨간불:1, 노란불:2, 초록불:3
신호: 3
초록불입니다. 출발하세요

그 외 숫자 입력시
☆★신호등 프로그램☆★
빨간불:1, 노란불:2, 초록불:3
신호: 4
잘못누르셨습니다.



*/
