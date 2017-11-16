package edu.xidian.lab.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

public class HttpGet {
	public static String doGet(String url){
		String result = "";
		BufferedReader in = null;
		try{
			URL realUrl = new URL(url);
			URLConnection connection = realUrl.openConnection();
			connection.connect();
			in = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
			String line;
			while((line = in.readLine()) != null){
				result += line;
			}
		}catch(Exception e){
			System.out.println("«Î«Û“Ï≥£");
			e.printStackTrace();
		}finally{
			try{
				if(in != null){
					in.close();
				}
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return result;
	} 

}
