package cn.edu.cup.test

class TestClazzA {

    String name
    Double fielda
    Double fieldb
    
    static constraints = {
        name()
        fielda()
        fieldb()
    }
    
    String toString() {
        return "${name}(${fielda},${fieldb})"
    }
}
