package day09;

public class For03 {
	public static void main(String[] args) {
			int sum = 0;
			// 1~10까지의 합을 계산해서 출력
			for(int i=1;i<=10;i++) {
				System.out.printf("i=%d, sum=%d\n", i, sum+=i);
			}
	}
}
/*
Console

i=1, sum=1
i=2, sum=3
i=3, sum=6
i=4, sum=10
i=5, sum=15
i=6, sum=21
i=7, sum=28
i=8, sum=36
i=9, sum=45
i=10, sum=55

*/
