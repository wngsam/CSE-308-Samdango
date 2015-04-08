/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package managers;
import domains.User;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.codec.binary.Hex;
import java.util.*;
/**
 *
 * @author DreamRealizer
 */
public class UserManager {
    
    private HashMap<String,User> users;
    
    UserManager(){
        users = new HashMap();
    }
    
    public boolean registerUser(User user) throws UnsupportedEncodingException, NoSuchAlgorithmException{
        boolean confirmation = false;
        if(users.get(user.getEmail())==null){
            user.setPassword(hash(user.getPassword()));
            users.put(user.getEmail(),user);
            confirmation = true;
        }
        
        return confirmation;
    }
    
    public String hash(String password) throws UnsupportedEncodingException, NoSuchAlgorithmException{
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        String hashed = new String(Hex.encodeHexString(md.digest(password.getBytes("UTF-8"))));
        
        return hashed;
    }
    
}
