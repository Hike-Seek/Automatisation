resource "null_resource" "ssh_target" {
  connection {
    type        = "ssh"
    user        = "$var.user"
    host        = "$var.host"
    password    = "$var.password"
    port        = 29
  }


  provisioner "remote-exec" {
    inline = [
        "echo welcome to Model Cloud Registry !",
        "pwd",
        "cd /home/guardian/hike-and-seek/ML",
        "git checkout main",
        "git pull",
        "git status"
    ]
  }

}
