package examples.users;

import com.intuit.karate.junit5.Karate;

public class UsersTest {
    @Karate.Test
    Karate getUsers(){
        return Karate.run("users").relativeTo(getClass());
    }
}
