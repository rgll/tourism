package com.hsxy.tourism.web.controller.text;

import java.util.ArrayList;
import java.util.Scanner;

public class TouTiao3 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		long[] ch = new long[2 ^ 63];
		for (Integer i = 0; i < ch.length; i++) {
			ch[i] = sc.nextLong();
			if (ch[i] == 0) {
				break;
			}
		}
		System.out.println(textTwo(ch));
	}

	private static long textTwo(long[] a) {
		ArrayList<Long> arr = new ArrayList<Long>();
		for (int i = 0; i < a.length; i++) {
			if (!arr.contains(a[i])) {
				arr.add(a[i]);
			}
		}
		return arr.size() - 1;
	}

}
