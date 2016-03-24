package io.tiny.service;

import io.tiny.entity.Student;
import java.util.List;

public interface IStudentService {

    List<Student> getList();

    List<Student> getListByDs1();

    List<Student> getListByDs2();

    Student getStudentByID(Integer id);

}