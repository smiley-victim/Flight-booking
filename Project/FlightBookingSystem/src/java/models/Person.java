package models;

/*
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 */
public abstract class Person {
 
    String name;
    String email;
    
    
    public Person(String f,String e)
    {
        name = f;
        email = e;
    }
}
