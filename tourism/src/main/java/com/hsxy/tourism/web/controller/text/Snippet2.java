package com.hsxy.tourism.web.controller.text;

import java.util.Scanner;

public class Snippet2 {
	public static void main(String[] args) {
		String[] ch = new String[2];
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < 2; i++) {
			ch[i] = sc.nextLine();
		}
		int a = Integer.parseInt(ch[0]);
		String b = ch[1];
		String[] str = b.split(" ");
		System.out.println(textTwo(a, str));
	}

	private static int textTwo(int a, String[] str) {
		for (int i = 0; i < str.length; i++) {
			if (str[i] == str[str.length - 1]) {
				return 0;
			}
		}
		return 0;
	}

}
