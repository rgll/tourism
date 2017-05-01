package com.hsxy.tourism.web.controller.text;

//已知二叉树前序和中序，求后序
public class BeforebdleTree2 {

	static String GetConvert(int number) {
		StringBuilder tmp = new StringBuilder();
		do {
			int tmpInt = number % 26;
			tmp.insert(0, (char) (tmpInt + 65));
			number = number / 26;
		} while (number > 0);
		return tmp.toString();
	}

	public static void main(String[] args) {
		System.out.println(GetConvert(10));
	}
}