package org.example;

import lombok.SneakyThrows;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");
        try {
            throwsSomething();
        } catch (Exception e) {
            System.out.println("caught!");
        }
    }

    @SneakyThrows
    static void throwsSomething() {
        throw new Exception();
    }
}
