package com.management.learn.controllers;

import com.management.learn.dto.CalcDTO;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;

@Controller
public class DemoContoller {

    @Value("${user.myname}")
    public String name;
    @GetMapping("/welcome")
    public String demoHome(){
        return "Welcome to Our Springboot Backend Service " + name;
    }

    @GetMapping("/")
    public String calculator(Model model, ViewResolverRegistry registry){
        registry.jsp("/calculator",".jsp");
        return "calculator";
    }

    @GetMapping("/calculator")
    public String calculatorGet(Model model, ViewResolverRegistry registry){
        registry.jsp("/calculator",".jsp");
        return "calculator";
    }

    @PostMapping("/calculate")
    public String calculateController(@ModelAttribute CalcDTO data, Model modal){
        System.out.println(data.getNum1() + ", "+ data.getNum2());
        data.setResult(data.getNum1(), data.getNum2());
        modal.addAttribute("num1", data.getNum1());
        modal.addAttribute("num2", data.getNum2());
        modal.addAttribute("result", data.getResult());

        return "calculator"; // Assuming you have a "result.jsp" file
    }

}
