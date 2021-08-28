package org.impelsys.BeanAnnotationDemo;

import org.impelsys.config.AppConfig;
import org.impelsys.model.impl.SamsungMobile;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	AbstractApplicationContext applicationContext = new AnnotationConfigApplicationContext(AppConfig.class);
    	applicationContext.registerShutdownHook();
    	// SamsungMobile s8= applicationContext.getBean(SamsungMobile.class);//retrieve bean from Spring context
       // SamsungMobile s8=(SamsungMobile) applicationContext.getBean("samsungMobile");
       //System.out.println("Lazily loading the Samsung Mobile");
    	SamsungMobile s8=(SamsungMobile) applicationContext.getBean("createSamsungPhone");
        s8.config();
    }
}
