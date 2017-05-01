package com.hsxy.tourism.web.controller;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String ch = sc.nextLine();
		String[] str = ch.split(" ");
		String a = str[0];
		String b = str[1];
		System.out.println(show(a, b));
	}

	private static boolean show(String a, String b) {
		boolean c = true;
		boolean d = true;
		char[] bt = b.toCharArray();
		char[] at = a.toCharArray();
		for (int i = 0; i < bt.length; i++) {
			if (!a.contains(String.valueOf(bt[i]))) {
				c = false;
			}
		}
		for (int i = 0; i < at.length; i++) {
			if (!b.contains(String.valueOf(at[i]))) {
				d = false;
			}
		}
		if (c == false || d == false) {
			return false;
		} else {
			return true;
		}
	}
}
