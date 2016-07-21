import com.bart.entity.User;
import com.bart.service.UserService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * for SSM2
 * Created by Bart on 16/7/18.
 * Date: 16/7/18 21:49
 */
public class jdbcTest {

    private UserService userService;


    @Before
    public void before(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring-mvc.xml","spring-mybatis.xml");
        userService = (UserService)ac.getBean("userService");

    }
    @Test
    public void getUserById(){

        System.out.println(userService.getUserById(1));
    }

    @Test
    public void getAllUser(){

        List<User> list = userService.getAllUser();
        for (User user : list) {
            System.out.println(user);
        }
    }


}
