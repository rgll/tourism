package com.hsxy.tourism.web.controller.text;

import java.util.ArrayList;
import java.util.Scanner;

public class TouTiao2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int[] ch = new int[100];
		int a = sc.nextInt();
		for (Integer i = 0; i < ch.length; i++) {
			ch[i] = sc.nextInt();
			if (ch.length == a) {
				break;
			}
		}
		System.out.println(a);
		for (int j = 0; j < ch.length; j++) {
			System.out.println(ch[j]);
		}
		// System.out.println(textTwo(ch));
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
