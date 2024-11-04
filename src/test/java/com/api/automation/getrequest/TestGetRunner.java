package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGetRunner {

    @Test
    public Karate runTest(){
        return Karate.run("getRequest","responseMatcher").relativeTo(getClass());
    }

    @Test
    public Karate runTestUsingClassPath(){
        return Karate.run("src/test/java/com/api/automation/getrequest/getRequest.feature");
    }
}
