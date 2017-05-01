package com.hsxy.tourism.web.controller.text;

import java.util.Scanner;

public class Text3 {

	public static void main(String[] args) {
		int[] ch = new int[2];
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < 2; i++) {
			ch[i] = sc.nextInt();
		}
		System.out.println(textTwo(ch));
	}

	private static int textTwo(int[] ch) {
		int t = 240; // 从8点到12点一共多少分钟
		int k = 0;
		for (int i = 1; i <= ch[0]; i++) {
			k = k + (i + 1) * 5;
			if (k + ch[1] == t) {
				return i;
			} else {
				return i - 1;
			}
		}
		return 0;
	}
}
