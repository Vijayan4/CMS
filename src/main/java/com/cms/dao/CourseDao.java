package com.cms.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cms.entity.Course;

@Repository
public class CourseDao {

    private static List<Course> list = new ArrayList<>();

    static {
        Course c = new Course();
        c.setId(1);
        c.setName("Nesamani");
        c.setInstructor("Dinesh");
        list.add(c);
    }

    public List<Course> getCourses() {
        return list;
    }

    public void saveCourse(Course course) {
        for (Course c : list) {
            if (c.getId() == course.getId()) {
                c.setName(course.getName());
                c.setInstructor(course.getInstructor());
                return;
            }
        }
        list.add(course);
    }

    public Course getCourseById(int id) {
        for (Course c : list) {
            if (c.getId() == id) {
                return c;
            }
        }
        return null;
    }
    
    public void deleteCourse(int id) {
        list.removeIf(c -> c.getId() == id);
    }
}