import terraform

from Function f, CallExpr ce
where f.getName() = "aws_security_group_rule" and
    ce.getTarget().getName() = f.getName()
select ce, "Potential security group rule found"