package cn.edu.cup.test

class TestClazzB {

    String name
    Double fieldc
    
    static constraints = {
        name()
        fieldc()
    }
    
    String toString() {
        return "${name}(${fieldc})"
    }
}
