package com.scotiabank.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@SuppressWarnings("deprecation")
@RunWith(Cucumber.class)
@CucumberOptions(
    features ="src/test/resources/features", 
    glue = { "com.scotiabank.stepdefs", "com.scotiabank.utils","com.scotiabank.pages" },
    dryRun = true,
    tags = "", //<- add the tag to generate the stepdef methods
    plugin = { "pretty", "summary", "html:target/cucumber-reports.html", "json:target/cucumber.json",                    // JSON report
            "junit:target/cucumber.xml"  },
    
    monochrome = true,
    publish = true
)
public class DryRunner {}
