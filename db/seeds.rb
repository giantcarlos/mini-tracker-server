puts "🌱 Seeding spices..."


MiniatureSet.create([
    {
        name: "Unhallowed",
        year: 2007
    },
    {
        name: "Snowbound",
        year: 2021
    },
    {
        name: "Critical Role: Characters of Tal'Dorei",
        year: 2021
    },
    {
        name: "Adventures in the Forgotten Realms",
        year: 2021
    }
])


Miniature.create([
    {
        name: "Count Strahd Von Zarovich, Vampire",
        rarity: "Rare",
        size: "Medium",
        units: 1,
        miniature_set_id: 1,
        img_url: "https://www.minisgallery.com/images/minis/dungeons-and-dragons-miniatures/unhallowed/count-strahd-von-zarovich-vampire.jpg"
    },
    {
        name: "Van Richten",
        rarity: "Rare",
        size: "Medium",
        units: 1,
        miniature_set_id: 1,
        img_url: "https://www.minisgallery.com/images/minis/dungeons-and-dragons-miniatures/unhallowed/van-richten.jpg"
    },
    {
        name: "Cormyrean War Wizard",
        rarity: "Uncommon",
        size: "Medium",
        units: 2,
        miniature_set_id: 1,
        img_url: "https://www.minisgallery.com/images/minis/dungeons-and-dragons-miniatures/unhallowed/cormyrean-war-wizard.jpg"
    },
    {
        name: "Ice Troll",
        rarity: "Uncommon",
        size: "Large",
        units: 4,
        miniature_set_id: 2,
        img_url: "https://www.minisgallery.com/images/minis/dungeons-and-dragons-icons-of-the-realms/snowbound/ice-troll.jpg"
    },
    {
        name: "Duergar Hammerer",
        rarity: "Common",
        size: "Medium",
        units: 4,
        miniature_set_id: 2,
        img_url: "https://www.minisgallery.com/images/minis/dungeons-and-dragons-icons-of-the-realms/snowbound/duergar-hammer.jpg"
    },
    {
        name: "Matt Mercer",
        rarity: "Unique",
        size: "Medium",
        units: 1,
        miniature_set_id: 3,
        img_url: "https://www.minisgallery.com/images/minis/critical-role/characters-of-taldorei/matthew-mercer.jpg"
    },
    {
        name: "Lolth, the Spider Queen",
        rarity: "Unique",
        size: "Gargantuan",
        units: 1,
        miniature_set_id: 4,
        img_url: "https://www.minisgallery.com/images/minis/magic-the-gathering/adventures-in-the-forgotten-realms/lolth-the-spider-queen_pre.jpg"
    }
])

puts "✅ Done seeding!"
