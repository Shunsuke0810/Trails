
Unit.create(
  [
    {
      id:1,
      name:"中央線運転室",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
    },
    {
      id:2,
      name:"山手線運転室",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
    },
    {
      id:3,
      name:"総武線運転室",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
    },
    {
      id:4,
      name:"東京駅",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
    },
    {
      id:5,
      name:"司令室",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
    }
  ]
)

User.create(
  [
    {
      id:1,
      name: "佐藤",
      email: "sato@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "運転士",
      admin: true,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:1
    },
    {
      id:2,
      name: "青野",
      email: "aono@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "運転士",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:1
    },
    {
      id:3,
      name: "遠藤",
      email: "endo@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "車掌",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:1
    },
    {
      id:4,
      name: "門脇",
      email: "kadowaki@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "運転士",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:2
    },
    {
      id:5,
      name: "金子",
      email: "kaneko@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "運転士",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:2
    },
    {
      id:6,
      name: "斉藤",
      email: "saito@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "運転士",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:3
    },
    {
      id:7,
      name: "鈴木",
      email: "suzuki@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "運転士",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:3
    },
    {
      id:8,
      name: "中村",
      email: "nakamura@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "車掌",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:3
    },
    {
      id:9,
      name: "西川",
      email: "nishikawa@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "駅員",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:4
    },
    {
      id:10,
      name: "丸岡",
      email: "maruoka@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "駅員",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:4
    },
    {
      id:11,
      name: "森塚",
      email: "morituka@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "駅員",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:4
    },
    {
      id:12,
      name: "山田",
      email: "yamada@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "司令員",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:5
    },
    {
      id:13,
      name: "吉田",
      email: "yoshida@gmail.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "司令員",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:5
    },
    {
      id:14,
      name: "テストユーザー(一般)",
      email: "test@example.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "運転士",
      admin: false,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:1
    },
    {
      id:15,
      name: "テストユーザー(管理者)",
      email: "test_admin@example.com",
      password: "aaaaaa",
      password_confirmation: "aaaaaa",
      position: "管理者",
      admin: true,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      unit_id:1
    }
  ]
)

Post.create (
  [
    {
      id:1,
      ocurence: "2022-07-01",
      content: "線路状況悪化",
      location: "三鷹〜武蔵境",
      train_code: "C-101",
      lat: 35.702332252849956,
      lng: 139.55111565548094,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      user_id:1
    },
    {
      id:2,
      ocurence: "2022-07-03",
      content: "モーターに異音があります",
      train_code: "C-102",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      user_id:2
    },
    {
      id:3,
      ocurence: "2022-07-20",
      content: "濃霧のため視界不良。関係列車は注意して運転してください。",
      location: "高円寺~中野",
      train_code: "C-103",
      lat: 35.705563590574435,
      lng: 139.65832913500978,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      user_id:3
    },
    {
      id:4,
      ocurence: "2022-07-20",
      content: "雨のためブレーキが効きにくいです。みなさん気をつけましょう",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      user_id:4
    },
    {
      id:5,
      ocurence: "2022-07-20",
      content: "東京ドームでライブがあるため21時以降車内混み合いそうです",
      location: "東京ドーム沿線",
      lat: 35.7056396,
      lng: 139.7518913,
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
      user_id:5
    }
  ]
)

Label.create (
  [
    {
      name: "旅客トラブル",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
    },
    {
      name: "路面情報",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
    },
    {
      name: "設備故障",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
    },
    {
      name: "車両不具合",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
    },
    {
      name: "天候情報",
      created_at: "2022-07-16",
      updated_at: "2022-07-16",
    },
    
  ]
)