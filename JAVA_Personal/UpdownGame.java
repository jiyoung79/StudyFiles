package day10;

import java.util.Random;
import java.util.Scanner;	// util 패키지에 있는 모든 클래스를 가져와라

public class UpdownGame {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Random random = new Random();
		int user=-1;
		int num = random.nextInt(100)+1;
		while(user != num) {
			System.out.print("숫자 입력:");
			user = sc.nextInt();
			//user==num
			if(user==num) {
				System.out.println("정답입니다!");
			}
			//user>num down
			else if(user>num) {
				System.out.println("Down!");
			//user<num up
			}
			else {
				System.out.println("Up!");
			}
		}
	}

}


