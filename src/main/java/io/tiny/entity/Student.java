package io.tiny.entity;

import java.io.Serializable;

public class Student implements Serializable {
    private Integer id;

    private String name;

    private String scoreSum;

    private String scoreAvg;

    private Integer age;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getScoreSum() {
        return scoreSum;
    }

    public void setScoreSum(String scoreSum) {
        this.scoreSum = scoreSum == null ? null : scoreSum.trim();
    }

    public String getScoreAvg() {
        return scoreAvg;
    }

    public void setScoreAvg(String scoreAvg) {
        this.scoreAvg = scoreAvg == null ? null : scoreAvg.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", scoreSum=").append(scoreSum);
        sb.append(", scoreAvg=").append(scoreAvg);
        sb.append(", age=").append(age);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}