package com.cms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.cms.entity.Course;
import com.cms.service.CourseService;

@Controller
public class CourseController {

    @Autowired
    private CourseService service;

    @GetMapping("/")
    public String home(Model model) {
        List<Course> list = service.getCourses();
        model.addAttribute("courses", list);
        return "home";
    }

    @GetMapping("/addcourse")
    public String addPage(Model model) {
        model.addAttribute("course", new Course());
        return "addcourse";
    }

    @GetMapping("/edit")
    public String editCourse(@RequestParam int id, Model model) {
        Course course = service.getCourseById(id);
        model.addAttribute("course", course);
        return "addcourse";
    }

    @PostMapping("/save")
    public String saveCourse(@ModelAttribute Course course) {

        if (course.getId() == 0) {
            int id = service.getCourses().size() + 1;
            course.setId(id);
        }

        service.saveCourse(course);
        return "redirect:/";
    }
    @GetMapping("/delete")
    public String deleteCourse(@RequestParam int id) {
        service.deleteCourse(id);
        return "redirect:/";
    }
}