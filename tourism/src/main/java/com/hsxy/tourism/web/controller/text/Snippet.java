package com.hsxy.tourism.web.controller.text;

/*
 * renren
 */
import java.util.Scanner;

public class Snippet {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		while (sc.hasNext()) {
			int n = sc.nextInt();
			int[] a = new int[n];
			int[] b = new int[n];
			for (int i = 0; i < n; i++) {
				a[i] = sc.nextInt();
				if (i == 0) {
					b[i] = a[i];
				} else {
					b[i] = b[i - 1] + a[i];
				}
			}
			int c = 0;
			for (int i = 0; i < n - 1; i++) {
				if (b[i] * 2 == b[n - 1]) {
					c++;
				}
			}
			System.out.println(c);
		}
	}

}
