User.destroy_all
Event.destroy_all
# Seed 1 usuario
user = User.create!(
email: "train@hotmail.com",
password: "123456",
name: "big",
surname:"train",
username:"the_train",
age: 20
)
# Seed de 1 evento

evento = Event.new(nombre: "I like trains",
    direccion: "campichuelo 123",
    capacidad: 800,
    fecha: "2023-01-20",
    horarioinicio: "08:00",
    horariofinal: "20:00",
    banner: "https://images.unsplash.com/photo-1581833971358-2c8b550f87b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80", imgname:"https://images.unsplash.com/photo-1520453803296-c39eabe2dab4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1125&q=80", imgfondo: "https://images.unsplash.com/photo-1626450429795-a3ba2964ef7f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80", colorprimario: "green",
    colorsecundario: "white",
    finalizado: false,
    descripcion: "Where does it come from?
    Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.")
    evento.imgs = ["https://images.unsplash.com/photo-1532134358497-43fa3c6a02b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80" , "https://images.unsplash.com/photo-1607872828012-d0741c867edf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80"]
    evento.sponsors = ["https://1000marcas.net/wp-content/uploads/2019/11/McDonalds-logo-600x338.png","https://1000marcas.net/wp-content/uploads/2019/12/Starbucks-Logo-600x338.png","https://1000marcas.net/wp-content/uploads/2020/01/KFC-logo-600x338.png","https://1000marcas.net/wp-content/uploads/2020/01/Logo-Dominos-500x409.png"]
    evento.user = User.all.first
evento.save!