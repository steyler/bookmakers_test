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
        { title: "Creacion un test ", url:"https://www3.animeflv.net/anime/one-piece-tv", kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Boku no Hero Academia", url: "https://www3.animeflv.net/anime/boku-no-hero-academia-2016", kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Innovaciones").id },
        { title: "One piece", url:"https://www3.animeflv.net/anime/one-piece-tv", kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Konosuba", url: "https://www3.animeflv.net/anime/kono-subarashii-sekai-ni-shukufuku-wo",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Deportes").id },
        { title: "Solo leveling", url: "https://lectortmo.com/library/manhwa/41512/solo-leveling",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Spy x Family", url: "https://lectortmo.com/library/Video/43882/spy-x-family",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Innovaciones").id },
        { title: "Owari no Seraph", url: "https://lectortmo.com/library/Video/8190/Owari-no-Seraph",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Jujutsu Kaisen", url: "https://www3.animeflv.net/anime/jujutsu-kaisen-tv",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Jujutsu Kaisen", url: "https://lectortmo.com/library/Video/36989/jujutsu-kaisen",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Junk the Black Shadow", url: "https://lectortmo.com/library/Video/37907/Junk-the-Black-Shadow",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Nacionales").id },
        { title: "Log Horizon", url: "https://www3.animeflv.net/anime/log-horizon",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Deportes").id },
        { title: "Vinland Saga", url: "https://www3.animeflv.net/anime/vinland-saga",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Fate Stay Night", url: "https://www3.animeflv.net/anime/fate-stay-night",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Nacionales").id },
        { title: "The Irregular at Magic High School", url: "https://www3.animeflv.net/anime/mahouka-koukou-no-rettousei",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Innovaciones").id },
        { title: "Hunter X Hunter", url: "https://lectortmo.com/library/Video/212/hunter-x-hunter",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Gantz", url: "https://lectortmo.com/library/Video/8804/gantz",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "I am a Hero", url: "https://lectortmo.com/library/Video/6102/i-am-a-hero",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Deportes").id },
        { title: "Neo Genesis Evangelion", url: "https://www3.animeflv.net/anime/neon-genesis-evangelion",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Tecnología").id },
        { title: "Slam Dunk", url: "https://lectortmo.com/library/Video/11580/slam-dunk",kind_id: Kind.find_by(name: "Video").id, category_id: Category.find_by(name: "Innovaciones").id },
        { title: "Higurashi no Naku Koro Ni", url: "https://www3.animeflv.net/anime/higurashi-no-naku-koro-ni",kind_id: Kind.find_by(name: "Artículo").id, category_id: Category.find_by(name: "Innovaciones").id }

    ]
)