package mydomain.myapp.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

public class HelloController {
  String propConfigValue=null;
  String username="";
  String password1="";
  String constring="";
  String propSecretValue=null;
  String propKeyValue=null;
  
  public String getPropKeyValue() {
    return propKeyValue;
  }
  public void setPropKeyValue(String propKeyValue) {
    this.propKeyValue = propKeyValue;
  }
  public String getPropSecretValue() {
    return propSecretValue;
  }
  public void setPropSecretValue(String propSecretValue) {
    this.propSecretValue = propSecretValue;
  }
  public String getPropConfigValue() {
    return propConfigValue;
  }
  public void setPropConfigValue(String propConfigValue) {
    this.propConfigValue = propConfigValue;
  }
  
  public HelloController() {
    properties props = new Properties();
    
    InputSream input = null;
    InputStream input1 = null;
    try {
    input = new FileInputStream(System.getProperty("config.properties"));
    input1 = new FileInputStream(System.getProperty("secret.properties"));
    
    props.load(input);
    props.load(input1);
    
    propConfigValue = props.getProperty("ENVIRONMENT");
    propKeyValue = props.getProperty("Key");
    System.out.println(props.getProperty("ENVIRONMENT"));
  }catch(Exception ex)
  {
    ex.getMessage();
  }
    }
    public String secretsVal() {
      username = System.getenv("username");
      password1 = System.getenv("password1");
      constring = System.getenv("constring");
      propSecretValue = username + "" + password1 + "" + constring;
      System.out.println(username + "..." +password1+"..."+constring);
      return "Secret Value ------->"+ propSecretValue + "....!!!!!";
    }
      public String propertyVal() {
        return "Propeties File---->" + propConfigValue + ".....!!!!!.... I am the key "+ propKeyValue;
      }     
}
