package com.api.automation.getrequest;

import com.intuit.karate.junit5.Karate;

public class TestVariablesRunner {
    @Karate.Test
    public Karate runTest(){
        return Karate.run("Variables").relativeTo(getClass());
    }


}
