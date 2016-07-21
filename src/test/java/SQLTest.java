import com.bart.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * for SSM2
 * Created by Bart on 16/7/19.
 * Date: 16/7/19 17:58
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mvc.xml","classpath:spring-mybatis.xml"})
public class SQLTest {

    @Resource
    private UserService userService;

    @Test
    public void getUserById(){
        System.out.println(userService.getUserById(1));


    }

}
