User.destroy_all

@user_1 = User.create(name: "Bob Cobb", email: "bobcobb@net.com", age: 45, password_digest: "go123", role: "administrator")
@user_2 = User.create(name: "Hal Hope", email: "halhope@net.com", age: 34, password_digest: "go123", role: "editor")
@user_3 = User.create(name: "Kal Kool", email: "kalkool@net.com", age: 39, password_digest: "go123", role: "regular")
@user_4 = User.create(name: "Jim Jupe", email: "jimjupe@net.com", age: 28, password_digest: "go123", role: "editor")

