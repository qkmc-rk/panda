package org.panda.utils;

import sun.misc.BASE64Encoder;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.MessageDigestSpi;
import java.security.NoSuchAlgorithmException;

public class MD5Encoder {

    public static String md5encoding(String password){
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            BASE64Encoder base64en = new BASE64Encoder();
            String newstr=base64en.encode(md5.digest(password.getBytes("utf-8")));
            return newstr;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean checkpassword(String newpasswd,String oldpasswd){
        if(md5encoding(newpasswd).equals(oldpasswd))
            return true;
        else
            return false;
    }
}
