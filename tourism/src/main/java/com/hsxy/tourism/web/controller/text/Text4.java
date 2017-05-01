package com.hsxy.tourism.web.controller.text;

import java.util.Scanner;

public class Text4 {
	public static void main(String[] args) {
		String[] ch = new String[2];
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < 2; i++) {
			ch[i] = sc.nextLine();
		}
		String a = ch[0];
		String b = ch[1];
		String[] str = b.split(" ");
		int array[] = new int[str.length];
		for (int i = 0; i < str.length; i++) {
			array[i] = Integer.parseInt(str[i]);
		}
		System.out.println(getMaxDivisor(a, array));
	}

	public static int getMaxDivisor(String a, int[] array) {
		int minN = getMin(array);
		for (int j = minN; j >= 2; j--) {
			int count = 0;
			for (int i = 0; i < array.length; i++) {
				if (array[i] % j == 0) {
					count++;
				}
			}
			if (count == array.length) {
				return j;
			}
		}
		return -1;// 无最大公约数
	}

	public static int getMin(int[] a) {
		if (a.length < 1) {
			return -1;
		}
		int min = a[0];
		for (int i = 0; i < a.length; i++) {
			if (min > a[i]) {
				min = a[i];
			}
		}
		return min;
	}
}