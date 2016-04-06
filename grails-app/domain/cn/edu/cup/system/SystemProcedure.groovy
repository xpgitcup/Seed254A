package cn.edu.cup.system

class SystemProcedure {

    String name
    String controllerName
    String actionName
    String viewName
    String templateName
    SystemProcedure previous
    SystemProcedure next
    
    
    static constraints = {
        name(unique: true)
        controllerName(nullable: true)
        actionName(nullable: true)
        viewName(nullable: true)
        templateName(nullable: true)
        previous(nullable: true)
        next(nullable: true)
    }
    
    String toString() {
        return "${name}"
    }
}
