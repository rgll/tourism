package com.hsxy.tourism.web.controller.text;

import java.util.Arrays;
import java.util.Scanner;

public class Text {

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		String[] str = { "a", "f", "b" };
		Arrays.sort(str);
		for (int i = str.length - 1; i >= 0; i--) {
			System.err.print(str[i] + " ");
		}

		System.err.println("输入一个包含G和B的字符串：");
		Scanner sc = new Scanner(System.in);
		String str3 = sc.nextLine();
		char[] ch = str3.toCharArray();
		System.err.println(ch);

		textTwo(ch);
	}

	private static Boolean textTwo(char[] ch) {
		int n = 0;
		char k;
		for (int i = 0; i < ch.length - 1; i++) {
			for (int j = i + 1; j < ch.length; j++) {
				if (ch[i] != ch[j]) { // 交换两数的位置
					k = ch[i];
					ch[i] = ch[j];
					ch[j] = k;
					n++;
				}
			}
			System.err.println(n + "sss" + ch[i]);
		}
		return null;

	}
}
