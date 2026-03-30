package com.cms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cms.dao.CourseDao;
import com.cms.entity.Course;

@Service
public class CourseService {

    @Autowired
    private CourseDao dao;

    public List<Course> getCourses() {
        return dao.getCourses();
    }

    public void saveCourse(Course course) {
        dao.saveCourse(course);
    }

    public Course getCourseById(int id) {
        return dao.getCourseById(id);
    }
    public void deleteCourse(int id) {
        dao.deleteCourse(id);
    }
}