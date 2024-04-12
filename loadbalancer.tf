# creating external loadbalancer
resource "aws_lb" "external_alb" {
name = "external lb"
internal = false
load_balancer_type = "application"
security_groups = [aws_security_group.demosg.id]
sunets = [aws_subnet.public_subnet-1.id,aws_subnet.public_subnet-1.id]
}
resource = "aws_lb_target_group" "target_elb" {
name = "ALB TG"
port = 80
protocol = "http"
vpc_id = aws_vpc.demovpc.id
}
resource = "aws_lb_target_group_attachment" "attachment" {
target_group_arn = aws_lb_target_group.external_alb.arn
target_id = aws_instance.demoinstance1.id
port = 80
depends_on = {
aws_instance.demoinstance1
}
}
resource "aws_lb_listener" "external_elb" {
load_balancer_arn = aws_lb.external_alb.arn
port = 80
protocol = "http"
default_action {
type = "forward"
target_group_arn = aws_lb_target_group.external_alb.arn
}
}
