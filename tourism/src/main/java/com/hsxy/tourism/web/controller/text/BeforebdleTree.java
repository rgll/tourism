package com.hsxy.tourism.web.controller.text;

import java.util.Scanner;

public class BeforebdleTree {

	public static void main(String[] args) {
		String[] ch = new String[2];
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < 2; i++) {
			ch[i] = sc.nextLine();
		}
		String a = ch[0];
		String b = ch[1];
		String[] str = b.split(" ");
		textTwo(a, str);

	}

	private static void textTwo(String a, String[] str) {
		for (int j = 0; j < str.length; j++) {
			int n = Integer.parseInt(str[j]);
			for (int i = 2; i < n;) {
				if (0 == n % i) {
					n = n / i;
					System.out.println(i);
				} else {
					i++;
				}
			}
			System.out.println(n);
		}

	}
}