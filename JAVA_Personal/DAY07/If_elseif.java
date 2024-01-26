package day07;

import java.util.Scanner;

public class If_elseif {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int age;
		System.out.print("나이: ");
		age = sc.nextInt();
		
		if(age>19) {
			System.out.println("성인입니다.");
			System.out.println("성인 요금이 적용됩니다.");
			
		} else if(age>13) {  //13<age<19
			System.out.println("청소년 입니다.");
			System.out.println("청소년 요금이 적용됩니다.");
			
		} else if(age>8) {  //8<age<13
			System.out.println("어린이 입니다.");
			System.out.println("어린이 요금이 적용됩니다.");
			
		} else {
			System.out.println("유아 입니다.");
			System.out.println("유아 요금이 적용됩니다.");
			
		}
			System.out.println("결제를 진행해 주세요.");
		
		
	}
}

/*
Console

if(age>19)
나이: 20
성인입니다.
성인 요금이 적용됩니다.
결제를 진행해 주세요.

if(age>13)
나이: 14
청소년 입니다.
청소년 요금이 적용됩니다.
결제를 진행해 주세요.

if(age>8)
나이: 9
어린이 입니다.
어린이 요금이 적용됩니다.
결제를 진행해 주세요.

else
나이: 7
유아 입니다.
유아 요금이 적용됩니다.
결제를 진행해 주세요.


*/
