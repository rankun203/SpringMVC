package org.rankun.learn.spring.controller;

import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.Logger;

import org.rankun.learn.spring.models.Greeting;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created with IntelliJ IDEA.
 * User: 坤
 * Date: 13-10-26
 * Time: 下午4:20
 */
@Controller
public class GreetingController {
    private final String template = "Hello, %s";
    private final AtomicLong counter = new AtomicLong();

    @RequestMapping("/")
    public ModelAndView welcome () {
        ModelAndView view = new ModelAndView("index");
        return view;
    }

    @RequestMapping("greeting")
	public @ResponseBody
	Greeting greeting(@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
        Logger.getLogger("INFO_LOG").log(Level.INFO, "greeting executing.");
        return new Greeting(counter.incrementAndGet(), String.format(template, name));
    }
}
