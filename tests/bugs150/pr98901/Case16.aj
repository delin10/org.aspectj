// "public abstract annotated ITD method"

import java.lang.annotation.*;
import java.lang.reflect.Method;

@Retention(RetentionPolicy.RUNTIME)
@interface anInterface{}

abstract class A16{
}

aspect B16 {
	
	@anInterface
	public abstract void A16.a();
	
	public static void main(String [] args){
		Class c = A16.class;
		try {
			Method m = c.getDeclaredMethod("a", new Class [0]);
			Annotation [] anns = m.getDeclaredAnnotations();
			for (int i = 0;i < anns.length;i++){
				System.out.println(anns[i]);
			}
		} catch (Exception e){
			System.out.println("exceptional!");
		}
	}
}
