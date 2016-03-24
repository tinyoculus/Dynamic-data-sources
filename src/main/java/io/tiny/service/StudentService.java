package io.tiny.service;

import io.tiny.database.TargetDataSource;
import io.tiny.entity.Student;
import io.tiny.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService implements IStudentService {

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Student> getList() {
        return studentMapper.getAllStudents();
    }

    @Override
    @TargetDataSource(name = "ds1")
    public List<Student> getListByDs1() {
        return studentMapper.getAllStudents();
    }

    @Override
    @TargetDataSource(name = "ds2")
    public List<Student> getListByDs2() {
        return studentMapper.getAllStudents();
    }

    @Override
    public Student getStudentByID(Integer id) {
        return studentMapper.selectByPrimaryKey(id);
    }
}
