package com.management.learn.dto;

public class CalcDTO {

    private int num1;
    private int num2;
    private String op;

    private int result;

    public int getResult() {
        return result;
    }

    public void setResult(int num1, int num2) {
        switch (this.op) {
            case "+":
                this.result = num1 + num2;
                break;
            case "-":
                this.result = num1 - num2;
                break;
            default:
                this.result = 0;
                break;
        }
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

    // Constructor
    public CalcDTO() {
    }

    // Getters and Setters
    public int getNum1() {
        return num1;
    }

    public void setNum1(int num1) {
        this.num1 = num1;
    }

    public int getNum2() {
        return num2;
    }

    public void setNum2(int num2) {
        this.num2 = num2;
    }
}
