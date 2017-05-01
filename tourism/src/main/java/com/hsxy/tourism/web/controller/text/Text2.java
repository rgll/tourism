package com.hsxy.tourism.web.controller.text;

import java.util.Scanner;

public class Text2 {

	public static void main(String[] args) {

		System.err.println("输入一个包含G和B的字符串：");
		@SuppressWarnings("resource")
		Scanner sc = new Scanner(System.in);
		String str = sc.nextLine();
		char[] ch = str.toCharArray();
		textTwo(ch);

	}

	private static void textTwo(char[] ch) {
		int k = 2;
		for (int i = 0; i < k; i++) {
			for (int j = 0; j < ch.length; j++) {
				ch[j] = (char) (ch[j] + ch[j + 1]);
				if (j == ch.length - 1) {
					ch[ch.length - 1] = (char) (ch[ch.length - 1] + ch[0]);
				}
			}
		}
		for (int i = 0; i < ch.length; i++) {
			System.out.print(ch[i] + " ");
		}
	}
}
