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
