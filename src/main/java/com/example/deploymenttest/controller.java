package com.example.deploymenttest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@Controller
public class controller {
    @GetMapping("/jsp")
    public String getHello(@RequestBody Book book, Model model)
    {
        System.out.println(book.author);
        ArrayList<Book> arr = new ArrayList<>();
        arr.add(book);
        arr.add(new Book("hi","123","me"));
        model.addAttribute("books",arr);
        System.out.println("this line");
        return "hello";
    }
    @GetMapping("/wtf")
    public String getWtf()
    {
        return "wtf";
    }
}
