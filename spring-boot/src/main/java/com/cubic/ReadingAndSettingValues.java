/*
 * package com.cubic;
 * 
 * import java.lang.reflect.Field; import java.util.Objects;
 * 
 * import com.cubic.dao.Signup;
 * 
 * class A{
 * 
 * } class B extends A{
 * 
 * }
 * 
 * public class ReadingAndSettingValues {
 * 
 * 
 * 
 * private static Signup validateAndSetValue(Signup signup) { try { Field[] fld
 * = Signup.class.getDeclaredFields(); // for (Field fieldName : fld) {
 * fieldName.setAccessible(true); String type =
 * fieldName.getType().getTypeName(); System.out.println(type); switch (type) {
 * case "int": Integer ivalue = (Integer) fieldName.get(signup);
 * System.out.println("Value is = " + ivalue); break; case "java.lang.String":
 * String svalue = (String) fieldName.get(signup);
 * System.out.println("Value is = " + svalue); if (Objects.nonNull(svalue) &&
 * svalue.trim().length() == 0) { fieldName.set(signup, null); } break; }
 * 
 * } } catch (Exception ex) { ex.printStackTrace(); } return signup; }
 * 
 * 
 * 
 * public static void main(String[] args) throws IllegalArgumentException,
 * IllegalAccessException {
 * 
 * A a =new B();
 * 
 * System.out.println(a instanceof A); System.out.println(a instanceof B);
 * 
 * 
 * 
 * Signup signup = new Signup(); signup.setUsername("Nagendra");
 * signup.setEmail("nagen@gmail.com"); signup.setPassword("");
 * signup.setMobile("302230"); System.out.println(validateAndSetValue(signup));
 * }
 * 
 * }
 */