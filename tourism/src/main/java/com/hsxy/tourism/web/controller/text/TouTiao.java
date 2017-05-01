package com.hsxy.tourism.web.controller.text;

import java.util.Scanner;

public class TouTiao {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int m = sc.nextInt();
		int[] ch = new int[m];
		for (int i = 0; i < m; i++) {
			ch[i] = sc.nextInt();
		}
		int n = sc.nextInt();
		int[] ch2 = new int[n];
		for (int i = 0; i < n; i++) {
			ch2[i] = sc.nextInt();
		}
		StringBuffer str = new StringBuffer();
		for (int i = 0; i < m; i++) {
			str.append(ch[i]);
		}
		System.out.println(textOne(ch2, str));
	}

	private static StringBuffer textOne(int[] a, StringBuffer str) {
		String st = str + "";
		System.out.println(st);
		StringBuffer at = new StringBuffer();
		for (int i = 0; i < a.length; i++) {
			if (st.contains(String.valueOf(a[i]))) {
				at.append(a[i] + " ");
			}
		}
		return null;

	}

}
