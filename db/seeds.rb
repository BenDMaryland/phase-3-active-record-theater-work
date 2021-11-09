loki= Role.create(character_name: "loki")
thor =Role.create(character_name: "thor")
oden = Role.create(character_name: "oden")


tom = Audition.create(actor: "tom" ,location:"baltimore", phone:123, hired:false, role_id:loki.id)
chris = Audition.create(actor: "chris" ,location:"austr", phone:5678, hired:false, role_id:thor.id)
sylvia =Audition.create(actor: "sylvia" ,location:"russia", phone:1223, hired:false, role_id:loki.id)

oldman = Audition.create(actor: "oldman" ,location:"idk", phone:23123, hired:true, role_id:oden.id)
ron = Audition.create(actor: "ron" ,location:"somewhere", phone:342243, hired:false, role_id:oden.id)
youngman = Audition.create(actor: "youngman" ,location:"idk", phone:23123, hired:true, role_id:oden.id)
jon = Audition.create(actor: "jon" ,location:"somewhere", phone:342243, hired:false, role_id:oden.id)