# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kind.destroy_all
Category.destroy_all
Bookmark.destroy_all

Kind.create(
    [
        { name: "Artículo" },
        { name: "Video" }
    ]
)
Category.create(
    [
        { name: "Tecnología", domain: false },
        { name: "Deportes", domain: true }
    ]
)
Category.create(
    [
        { name: "Innovaciones", domain: false, category_id: Category.find_by(name: "Tecnología").id },
        { name: "Nacionales", domain: false, category_id: Category.find_by(name: "Deportes").id }
    ]
)
Bookmark.create(
    [
        { title: "Asistentes digitales con voz, la nueva compañía ", url:"https://picsum.photos/id/237/200/300", kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Inteligencia Artificial (IA), el año de su madurez en los negocios", url: "https://picsum.photos/seed/picsum/200/300", kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Innovaciones").id },
        { title: "Internet de las cosas (IoT), tu casa conectada", url:"https://picsum.photos/200/300?grayscale", kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Automatización de procesos Robóticos (RPA), como una realidad", url: "https://www.flightradar24.com/51.53,0/8",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Deportes").id },
        { title: "Seguridad de datos o ciberseguridad", url: "https://www.music-map.com/g",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "La migración a la multi-nube", url: "https://traintimes.org.uk/map/tube/schematic/",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Innovaciones").id },
        { title: "Analítica y minería de datos como el foco en muchas profesiones", url: "https://www.spacejam.com/jam.htm",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Realidad Virtual y Realidad Aumentada (RA", url: "kaisen-tv",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Comercio en línea dentro de las preferencias más altas", url: "https://picsum.photos/id/0/info",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "BlockChain, más que bloques", url: "https://lectortmo.com/library/Video/37907/Junk-the-Black-Shadow",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Nacionales").id },
        { title: "Log Horizon", url: "https://www.zoomquilt.org/",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Deportes").id },
        { title: "Llegada de la red 5G, red a toda velocidad", url: "https://www.music-map.com/",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Chatbot y respuestas rápidas", url: "http://hyperphysics.phy-astr.gsu.edu/hbase/index.html",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Nacionales").id },
        { title: "Creacion de atomo", url: "https://www.google.com/maps/d/u/0/viewer?mid=1Z1dI8hoBZSJNWFx2xr_MMxSxSxY&hl=en_US&ll=-3.539794309791734%2C48.86813719999998&z=1",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Innovaciones").id },
        { title: "Microsoft desea invertir en Costa Rica", url: "https://www.mapcrunch.com/",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "IBM invierte en chatbots e IA", url: "https://picsum.photos/200/300.jpg",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "I am a Hero", url: "https://picsum.photos/200/300.webp",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Deportes").id },
        { title: "Splunk for analyze", url: "https://picsum.photos/id/870/200/300?grayscale&blur=2",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "AT&T building", url: "https://picsum.photos/200/300/?blur=2",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Innovaciones").id },
        { title: "Carlillos prueba", url: "https://picsum.photos/200/300/?blur",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Innovaciones").id }

    ]
)