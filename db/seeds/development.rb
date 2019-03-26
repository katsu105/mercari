# レディース
l_cat = ["レディース", "メンズ", "ベビー・キッズ","インテイリア・住まい・小物" ,"本・音楽・ゲーム","おもちゃ・ホビー・グッズ","コスメ・香水・美容","家電・スマホ・カメラ","スポーツ・レジャー","ハンドメイド","チケット","自動車・オートバイ","その他"]

l_cat.each do |l_cat| 
  Category.create(name: l_cat)
end

  lady_cat = ["トップス","ジャケット/アウター","パンツ","スカート","ワンピース","靴","ルームウェア/パジャマ","レッグウェア","帽子","バッグ","アクセサリー","ヘアアクセサリー","小物","時計","ウィッグ/エクステ","浴衣/水着","スーツ/フォーマル/ドレス","マタニティ","その他"]

  lady_cat.each do |lady_cat|
    Category.find(1).children.create(name: lady_cat)
  end

  l_tops = ["Tシャツ/カットソー(半袖/袖なし)","Tシャツ/カットソー(七分/長袖)","シャツ/ブラウス(半袖/袖なし)","シャツ/ブラウス(七分/長袖)","ポロシャツ","キャミソール","タンクトップ","ホルターネック",
    "ニット/セーター","チュニック","カーディガン/ボレロ","アンサンブル","ベスト/ジレ","パーカー","トレーナー/スウェット","ベアトップ/チューブトップ","ジャージ","その他"]

  l_tops.each do |l_tops|
    Category.where(name: "トップス").first.children.create(name: l_tops)
  end

  l_jacket = ["テーラードジャケット","ノーカラージャケット","Gジャン/デニムジャケット","レザージャケット","ダウンジャケット","ライダースジャケット","ミリタリージャケット",
    "ダウンベスト","ジャンパー/ブルゾン","ポンチョ","ロングコート","トレンチコート","ダッフルコート","ピーコート","チェスターコート","モッズコート",
    "スタジャン","毛皮/ファーコート","スプリングコート","スカジャン","その他"]

  l_jacket.each do |l_jacket|
    Category.where(name: "ジャケット/アウター").first.children.create(name: l_jacket)
  end

  l_pants =  ["デニム/ジーンズ","ショートパンツ","カジュアルパンツ","ハーフパンツ","チノパン","ワークパンツ/カーゴパンツ",
    "クロップドパンツ","サロペット/オーバーオール","オールインワン","サルエルパンツ","ガウチョパンツ","その他",]

  l_pants.each do |l_pants|
    Category.where(name: "パンツ").first.children.create(name: l_pants)
  end

  l_skirt = ["ミニスカート","ひざ丈スカート","ロングスカート","キュロット","その他",]

  l_skirt.each do |l_skirt|
    Category.where(name: "スカート").first.children.create(name: l_skirt)
  end

  l_one = ["ミニワンピース","ひざ丈ワンピース","ロングワンピース"]

  l_one.each do |l_one|
    Category.where(name: "スカート").first.children.create(name: l_one)
  end

  l_shoes = ["ハイヒール/パンプス","ブーツ","サンダル","スニーカー","ミュール","モカシン","ローファー/革靴",
    "フラットシューズ/バレエシューズ","長靴/レインシューズ","その他",]
                        
  l_shoes.each do |l_shoes|
    Category.where(name: "靴").first.children.create(name: l_shoes)
  end

  l_pajama = ["パジャマ","ルームウェア"]

  l_pajama.each do |l_pajama|
    Category.where(name: "ルームウェア/パジャマ").first.children.create(name: l_pajama)
  end

  l_leg = ["ソックス","スパッツ/レギンス","ストッキング/タイツ","レッグウォーマー","その他"]

  l_leg.each do |l_leg|
    Category.where(name: "レッグウェア").first.children.create(name: l_leg)
  end

  l_cap = ["ニットキャップ/ビーニー","ハット","ハンチング/ベレー帽","キャップ","キャスケット","麦わら帽子"]

  l_cap.each do |l_cap|
    Category.where(name: "帽子").first.children.create(name: l_cap)
  end
  
  l_bag = ["ハンドバッグ","トートバッグ","エコバッグ","リュック/バックパック","ボストンバッグ",
  "スポーツバッグ","ショルダーバッグ","クラッチバッグ","ポーチ/バニティ","ボディバッグ/ウェストバッグ",
  "マザーズバッグ","メッセンジャーバッグ","ビジネスバッグ","旅行用バッグ/キャリーバッグ","ショップ袋",
  "和装用バッグ","かごバッグ","その他"]
  
  l_bag.each do |l_bag|
    Category.where(name: "バッグ").first.children.create(name: l_bag)
  end
                    
  l_accessories = ["ネックレス","ブレスレット", "バングル/リストバンド","リング","ピアス(片耳用)","ピアス(両耳用)",
    "イヤリング","アンクレット","ブローチ/コサージュ","チャーム","その他"]               
  
  l_accessories.each do |l_accessories|
    Category.where(name: "アクセサリー").first.children.create(name: l_accessories)
  end

  l_h_accessories = ["ヘアゴム/シュシュ","ヘアバンド/カチューシャ","ヘアピン","その他"]

  l_h_accessories.each do |l_h_accessories|
    Category.where(name: "ヘアアクセサリー").first.children.create(name: l_h_accessories)
  end

  l_wallet = ["長財布","折り財布","コインケース/小銭入れ","名刺入れ/定期入れ","キーケース","キーホルダー","手袋/アームカバー",
    "ハンカチ","ベルト","マフラー/ショール","ストール/スヌード","バンダナ/スカーフ","ネックウォーマー","サスペンダー",
  "サングラス/メガネ","モバイルケース/カバー","手帳","イヤマフラー","傘","レインコート/ポンチョ","ミラー","タバコグッズ","その他"]             

  l_wallet.each do |l_wallet|
    Category.where(name: "小物").first.children.create(name: l_wallet)
  end

  l_clock = ["腕時計(アナログ)","腕時計(デジタル)","ラバーベルト","レザーベルト","金属ベルト"]

  l_clock.each do |l_clock|
    Category.where(name: "時計").first.children.create(name: l_clock)
  end

  l_wig = ["前髪ウィッグ","ロングストレート","ロングカール","ショートストレート","ショートカール"]

  l_wig.each do |l_wig|
    Category.where(name: "ウィッグ/エクステ").first.children.create(name: l_wig)
  end

  l_yukata = ["浴衣","着物","振袖","長襦袢/半襦袢","水着セパレート","水着ワンピース","水着スポーツ用","その他"]

  l_yukata.each do |l_yukata|
    Category.where(name: "浴衣/水着").first.children.create(name: l_yukata)
  end

  l_suit = ["スカートスーツ上下","パンツスーツ上下","ドレス","パーティーバッグ","シューズ","ウェディング","その他",]

  l_suit.each do |l_suit|
    Category.where(name: "スーツ/フォーマル/ドレス").first.children.create(name: l_suit)
  end


  l_maternity = ["トップス","アウター","インナー","ワンピース","パンツ/スパッツ","スカート","パジャマ","授乳服","その他",]

  l_maternity.each do |l_maternity|
    Category.where(name: "マタニティ").first.children.create(name: l_maternity)
  end

  l_other = ["コスプレ","下着","その他"]

  l_other.each do |l_other|
    Category.find(1).children.last.children.create(name: l_other)
  end

# メンズ
  mens_cat = ["トップス","ジャケット/アウター","パンツ","靴","バッグ","スーツ","帽子","アクセサリー","小物","時計","水着",
    "レッグウェア","アンダーウェア","その他"]

  mens_cat.each do |mens_cat|
    Category.find(2).children.create(name: mens_cat)
  end
  
  m_tops = ["Tシャツ/カットソー(半袖/袖なし)","Tシャツ/カットソー(七分/長袖)","シャツ","ポロシャツ",
  "タンクトップ","ニット/セーター","パーカー","カーディガン","スウェット","ジャージ","ベスト","その他"]

  m_tops.each do |m_tops|
    Category.where(name: "トップス")[1].children.create(name: m_tops)
  end

  m_jakcet = ["テーラードジャケット","ノーカラージャケット","Gジャン/デニムジャケット","レザージャケット","ダウンジャケット",
    "ライダースジャケット","ミリタリージャケット","ナイロンジャケット","フライトジャケット","ダッフルコート","ピーコート","ステンカラーコート",
    "トレンチコート","モッズコート","チェスターコート","スタジャン","スカジャン","ブルゾン","マウンテンパーカー","ダウンベスト","ポンチョ",
    "カバーオール""その他"]

  m_jakcet.each do |m_jakcet|
    Category.where(name: "ジャケット/アウター")[1].children.create(name: m_jakcet)
  end
  
  m_pants = ["デニム/ジーンズ","ワークパンツ/カーゴパンツ","スラックス","チノパン","ショートパンツ","ペインターパンツ",
    "サルエルパンツ","オーバーオール","その他",]

  m_pants.each do |m_pants|
    Category.where(name: "パンツ")[1].children.create(name: m_pants)
  end

  m_shoes = ["スニーカー","サンダル","ブーツ","モカシン","ドレス/ビジネス","長靴/レインシューズ","デッキシューズ","その他"]
  
  m_shoes.each do |m_shoes|
    Category.where(name: "靴")[1].children.create(name: m_shoes)
  end
          
  m_bag = ["ショルダーバッグ","トートバッグ","ボストンバッグ","リュック/バックパック","ウエストポーチ","ボディーバッグ",
    "ドラムバッグ","ビジネスバッグ","トラベルバッグ","メッセンジャーバッグ","エコバッグ","その他"]

  m_bag.each do |m_bag|
    Category.where(name: "バッグ")[1].children.create(name: m_bag)
  end

  m_suit = ["スーツジャケット","スーツベスト","スラックス","セットアップ","その他"]
                          
  m_suit.each do |m_suit|
    Category.where(name: "スーツ").first.children.create(name: m_suit)
  end

  m_cap = ["キャップ","ハット","ニットキャップ/ビーニー","ハンチング/ベレー帽","キャスケット","サンバイザー","その他"]
  m_cap.each do |m_cap|
    Category.where(name: "帽子")[1].children.create(name: m_cap)
  end

  m_accessories = ["ネックレス","ブレスレット","バングル/リストバンド","リング","ピアス(片耳用)","ピアス(両耳用)","アンクレット",
    "その他"]
    m_accessories.each do |m_accessories|
      Category.where(name: "アクセサリー")[1].children.create(name: m_accessories)
    end

  m_wallet = ["長財布","折り財布","マネークリップ","コインケース/小銭入れ","名刺入れ/定期入れ","キーケース","キーホルダー",
    "ネクタイ","手袋","ハンカチ","ベルト","マフラー","ストール","バンダナ","ネックウォーマー","サスペンダー","ウォレットチェーン",
    "サングラス/メガネ","モバイルケース/カバー","手帳","ストラップ","ネクタイピン","カフリンクス","イヤマフラー","傘","レインコート",
    "ミラー","タバコグッズ","その他"]

  m_wallet.each do |m_wallet|
    Category.where(name: "小物")[1].children.create(name: m_wallet)
  end

  m_clock = ["腕時計(アナログ)","腕時計(デジタル)","ラバーベルト", "レザーベルト", "金属ベルト","その他"]
  m_clock.each do |m_clock|
    Category.where(name: "時計")[1].children.create(name: m_clock)
  end                           
          
  m_swimwear = ["一般水着","スポーツ用","アクセサリー","その他"]
  m_swimwear.each do |m_swimwear|
    Category.where(name: "水着").first.children.create(name: m_swimwear)
  end

  m_leg = ["ソックス", "レギンス/スパッツ", "レッグウォーマー","その他"]
  m_leg.each do |m_leg|
    Category.where(name: "レッグウェア")[1].children.create(name: m_leg)
  end

  m_underwear = ["トランクス", "ボクサーパンツ", "その他"]
  m_underwear.each do |m_underwear|
    Category.where(name: "アンダーウェア").first.children.create(name: m_underwear)
  end
  m_other = ["その他"]

  m_other.each do |m_other|
    Category.where(name: "その他").find(221).children.create(name: m_other)
  end
 
# キッズ
baby_cat = ["ベビー服(女の子用) ~95cm","ベビー服(男の子用) ~95cm","ベビー服(男女兼用) ~95cm","キッズ服(女の子用) 100cm~",
  "キッズ服(男の子用) 100cm~","キッズ服(男女兼用) 100cm~","キッズ靴","子ども用ファッション小物","おむつ/トイレ/バス","外出/移動用品",
  "授乳/食事","ベビー家具/寝具/室内用品","おもちゃ","行事/記念品","その他"]

baby_cat.each do |baby_cat|
  Category.find(3).children.create(name: baby_cat)
end

  def s_cat(s_cat, cat_name)
    s_cat.each do |s_cat|
      Category.where(name: "#{cat_name}").first.children.create(name: s_cat)
    end
  end
  
  l_baby = ["トップス","アウター","パンツ","スカート","ワンピース","ベビードレス","おくるみ","下着/肌着","パジャマ","ロンパース","その他",]
  l_baby_cat_name = "ベビー服(女の子用) ~95cm"
  s_cat(l_baby, l_baby_cat_name)

  m_baby = ["トップス","アウター","パンツ","おくるみ","下着/肌着","パジャマ","ロンパース","その他"]
  m_baby_cat_name = "ベビー服(男の子用) ~95cm"
  s_cat(m_baby, m_baby_cat_name)

  uni_baby = ["トップス","アウター","パンツ","おくるみ","下着/肌着","パジャマ","ロンパース","その他"]
  uni_baby_cat_name = "ベビー服(男女兼用) ~95cm"
  s_cat(uni_baby, uni_baby_cat_name)
  
  l_kids = ["コート","ジャケット/上着","トップス(Tシャツ/カットソー)","トップス(トレーナー)","トップス(チュニック)",
    "トップス(タンクトップ)","トップス(その他)","スカート","パンツ","ワンピース","セットアップ","パジャマ","フォーマル/ドレス","和服","浴衣","甚平","水着","その他"]
  l_kids_cat_name = "キッズ服(女の子用) 100cm~"
  s_cat(l_kids, l_kids_cat_name)
            
  m_kids = ["コート","ジャケット/上着","トップス(Tシャツ/カットソー)","トップス(トレーナー)","トップス(その他)",
    "パンツ","セットアップ","パジャマ","フォーマル/ドレス","和服","浴衣","甚平","水着","その他"]
  m_kids_cat_name = "キッズ服(男の子用) 100cm~"
  s_cat(m_kids, m_kids_cat_name)

  uni_kids = ["コート","ジャケット/上着","トップス(Tシャツ/カットソー)","トップス(トレーナー)","トップス(その他)","ボトムス","パジャマ","その他"]
  uni_kids_cat_name = "キッズ服(男女兼用) 100cm~"
  s_cat(uni_kids, uni_kids_cat_name)

  kids_shoes = ["スニーカー","サンダル","ブーツ","長靴","その他"]
  kids_shoes_cat_name = "キッズ靴"
  s_cat(kids_shoes, kids_shoes_cat_name)

  kids_accessory = ["靴下/スパッツ","帽子","エプロン","サスペンダー","タイツ","ハンカチ","バンダナ","ベルト",
    "マフラー","傘","手袋","スタイ","バッグ","その他"]
  kids_accessory_cat_name = "子ども用ファッション小物"
  s_cat(kids_accessory, kids_accessory_cat_name)

  kids_sanitary = ["おむつ用品","おまる/補助便座","トレーニングパンツ","ベビーバス","お風呂用品","その他"]
  kids_sanitary_cat_name = "おむつ/トイレ/バス"
  s_cat(kids_sanitary, kids_sanitary_cat_name)

  kids_move = ["ベビーカー","抱っこひも/スリング","チャイルドシート","その他"]
  kids_move_cat_name = "外出/移動用品"
  s_cat(kids_move, kids_move_cat_name)

  kids_food = ["ミルク","ベビーフード","ベビー用食器","その他"]
  kids_food_cat_name = "授乳/食事"
  s_cat(kids_food, kids_food_cat_name)

  kids_furniture = ["ベッド","布団/毛布","イス","たんす","その他"]
  kids_furniture_cat_name = "ベビー家具/寝具/室内用品"
  s_cat(kids_furniture, kids_furniture_cat_name)

  kids_toy = ["おふろのおもちゃ","がらがら","オルゴール","ベビージム","手押し車/カタカタ","知育玩具","その他"]
  kids_toy_cat_name = "おもちゃ"
  s_cat(kids_toy, kids_toy_cat_name)

  souvenir = ["お宮参り用品","お食い初め用品","アルバム","手形/足形","その他"]
  souvenir_cat_name = "行事/記念品"
  s_cat(souvenir, souvenir_cat_name)

  kids_other = ["母子手帳用品", "その他"]

  kids_other.each do |kids_other|
    Category.roots.find(3).children.last.children.create(name: kids_other)
  end
  
  # 家具

  interior_cat = ["キッチン/食器", "ベッド/マットレス", "ソファ/ソファベッド", "椅子/チェア", "机/テーブル",
     "収納家具", "ラグ/カーペット/マット", "カーテン/ブラインド", "ライト/照明", "寝具", "インテリア小物",
      "季節/年中行事", "その他"]
  
  interior_cat.each do |interior_cat|
    Category.find(4).children.create(name: interior_cat)
  end
    
    interior_kitchen = ["食器","調理器具","収納/キッチン雑貨","弁当用品","カトラリー(スプーン等)",
      "テーブル用品","容器","エプロン","アルコールグッズ","浄水機","その他"]
    interior_kitchen_cat_name = "キッチン/食器"
    s_cat(interior_kitchen, interior_kitchen_cat_name)

    interior_bed = ["セミシングルベッド","シングルベッド","セミダブルベッド","ダブルベッド","ワイドダブルベッド","クイーンベッド","キングベッド",
      "脚付きマットレスベッド","マットレス","すのこベッド","ロフトベッド/システムベッド","簡易ベッド/折りたたみベッド","収納付き","その他"]
      interior_bed_cat_name = "ベッド/マットレス"
      s_cat(interior_bed, interior_bed_cat_name)
      
    interior_sofa = ["ソファセット","シングルソファ","ラブソファ","トリプルソファ","オットマン","コーナーソファ","ビーズソファ/クッションソファ",
      "ローソファ/フロアソファ","ソファベッド","応接セット","ソファカバー","リクライニングソファ","その他"]
      interior_sofa_cat_name = "ソファ/ソファベッド"
      s_cat(interior_sofa, interior_sofa_cat_name)
      
    interior_chair = ["一般","スツール","ダイニングチェア","ハイバックチェア","ロッキングチェア",
      "座椅子","折り畳みイス","デスクチェア","その他"]
    interior_chair_cat_name = "椅子/チェア"
      s_cat(interior_chair, interior_chair_cat_name)

    interior_tabel = ["こたつ","カウンターテーブル","サイドテーブル","センターテーブル",
      "ダイニングテーブル","座卓/ちゃぶ台","アウトドア用","パソコン用","事務机/学習机","その他"]
      interior_tabel_cat_name = "机/テーブル"
      s_cat(interior_tabel, interior_tabel_cat_name)
            
    interior_storage = ["リビング収納","キッチン収納","玄関/屋外収納","バス/トイレ収納","本収納","本/CD/DVD収納","洋服タンス/押入れ収納",
      "電話台/ファックス台","ドレッサー/鏡台","棚/ラック","ケース/ボックス","その他"]
    interior_storage_cat_name = "収納家具"
    s_cat(interior_storage, interior_storage_cat_name)
                                          
    interior_carpet = ["ラグ","カーペット","ホットカーペット","玄関/キッチンマット","トイレ/バスマット","その他"]
    interior_storage_cat_name = "ラグ/カーペット/マット"
    s_cat(interior_storage, interior_storage_cat_name)
                                        
    interior_curtain = ["カーテン","ブラインド","ロールスクリーン","のれん","その他"]
    interior_curtain_cat_name = "カーテン/ブラインド"
    s_cat(interior_curtain, interior_curtain_cat_name)

    interior_light = ["蛍光灯/電球","天井照明","フロアスタンド","その他"]
    interior_light_cat_name = "ライト/照明"
    s_cat(interior_light, interior_light_cat_name)

    interior_bedding = ["布団/毛布","枕","シーツ/カバー","その他"]
    interior_bedding_cat_name = "寝具"
    s_cat(interior_bedding, interior_bedding_cat_name)

    interior_accessory = ["ごみ箱","ウェルカムボード","オルゴール",
      "クッション","クッションカバー","スリッパラック","ティッシュボックス","バスケット/かご","フォトフレーム",
      "マガジンラック","モビール","花瓶","灰皿","傘立て","小物入れ","置時計","掛時計/柱時計",
      "鏡(立て掛け式)","鏡(壁掛け式)","置物","風鈴","植物/観葉植物","その他"]
      interior_accessory_cat_name = "インテリア小物"
      s_cat(interior_accessory, interior_accessory_cat_name)

    interior_season = ["正月","成人式","バレンタインデー","ひな祭り","子どもの日","母の日","父の日","サマーギフト/お中元",
      "夏/夏休み","ハロウィン","敬老の日","七五三","お歳暮","クリスマス","冬一般","その他"]
      interior_season_cat_name = "季節/年中行事"
      s_cat(interior_season, interior_season_cat_name)

    interior_other = ["すべて"]
    interior_other.each do |interior_other|
      Category.roots.find(4).children.last.children.create(name: interior_other)
    end

    # "本・音楽・ゲーム"
    enter_cat = ["本", "漫画", "雑誌", "CD", "DVD/ブルーレイ", "レコード", "テレビゲーム"]
    enter_cat.each do |enter_cat|
      Category.find(5).children.create(name: enter_cat)
    end

    e_book = ["文学/小説","人文/社会","ノンフィクション/教養","地図/旅行ガイド","ビジネス/経済","健康/医学","コンピュータ/IT",
      "趣味/スポーツ/実用","住まい/暮らし/子育て","アート/エンタメ","洋書","絵本","参考書","その他"]
      e_book_cat_name = "本"
      s_cat(e_book, e_book_cat_name)
          
    e_manga = ["全巻セット","少年漫画","少女漫画","青年漫画","女性漫画","同人誌","その他"]
    e_manga_cat_name = "漫画"
    s_cat(e_manga, e_manga_cat_name)
    
    e_magazine = ["アート/エンタメ/ホビー","ファッション","ニュース/総合","趣味/スポーツ","その他"]
    e_magazine_cat_name = "雑誌"
    s_cat(e_magazine, e_magazine_cat_name)

    e_cd = ["邦楽","洋楽","アニメ","クラシック","K-POP/アジア","キッズ/ファミリー","その他"]
    e_cd_cat_name = "CD"
    s_cat(e_cd, e_cd_cat_name)
      
    e_dvd = ["外国映画","日本映画","アニメ","TVドラマ","ミュージック","お笑い/バラエティ","スポーツ/フィットネス","キッズ/ファミリー","その他"]
    e_dvd_cat_name = "DVD/ブルーレイ"
    s_cat(e_dvd, e_dvd_cat_name)
                  
    e_record = ["邦楽","洋楽","その他"]
    e_record_cat_name = "レコード"
    s_cat(e_record, e_record_cat_name)

    e_game = ["家庭用ゲーム本体","家庭用ゲームソフト","携帯用ゲーム本体","携帯用ゲームソフト","PCゲーム","その他"]
    e_game_cat_name = "テレビゲーム"
    s_cat(e_game, e_game_cat_name)

   # "おもちゃ・ホビー・グッズ"

toy_cat = ["おもちゃ", "タレントグッズ", "コミック/アニメグッズ", "トレーディングカード", "フィギュア", "楽器/器材",
    "コレクション", "ミリタリー", "美術品", "アート用品", "その他"]
toy_cat.each do |toy_cat|
  Category.find(6).children.create(name: toy_cat)
end

  toy_toy = ["キャラクターグッズ","ぬいぐるみ","小物/アクセサリー","模型/プラモデル","ミニカー","トイラジコン",
    "プラモデル","ホビーラジコン","鉄道模型","その他"]
  toy_toy_cat_name = "おもちゃ"
  s_cat(toy_toy, toy_toy_cat_name)

  toy_talent = ["アイドル","ミュージシャン","タレント/お笑い芸人","スポーツ選手","その他"]
  toy_talent_cat_name = "タレントグッズ"
  s_cat(toy_talent, toy_talent_cat_name)

  toy_comic = ["ストラップ","キーホルダー","バッジ","カード","クリアファイル","ポスター","タオル","その他"]
  toy_comic_cat_name = "コミック/アニメグッズ"
  s_cat(toy_comic, toy_comic_cat_name)

  toy_card = ["遊戯王","マジック：ザ・ギャザリング","ポケモンカードゲーム","デュエルマスターズ","バトルスピリッツ","プリパラ","アイカツ",
    "カードファイト!! ヴァンガード","ヴァイスシュヴァルツ","プロ野球オーナーズリーグ","ベースボールヒーローズ","ドラゴンボール","スリーブ","その他"]
  toy_card_cat_name = "トレーディングカード"
  s_cat(toy_card, toy_card_cat_name)

  toy_figure = ["コミック/アニメ","特撮","ゲームキャラクター","SF/ファンタジー/ホラー","アメコミ","スポーツ","ミリタリー","その他"]
  toy_figure_cat_name = "フィギュア"
  s_cat(toy_figure, toy_figure_cat_name)

  toy_gakki = ["エレキギター","アコースティックギター","ベース","エフェクター","アンプ","弦楽器","管楽器","鍵盤楽器","打楽器",
    "和楽器","楽譜/スコア","レコーディング/PA機器","DJ機器","DTM/DAW","その他"]
  toy_gakki_cat_name = "楽器/器材"
  s_cat(toy_gakki, toy_gakki_cat_name)

  toy_collection = ["武具","使用済切手/官製はがき","旧貨幣/金貨/銀貨/記念硬貨","印刷物","ノベルティグッズ","その他"]
  toy_collection_cat_name = "コレクション"
  s_cat(toy_collection, toy_collection_cat_name)

  toy_military = ["トイガン","個人装備","その他"]
  toy_military_cat_name = "ミリタリー"
  s_cat(toy_military, toy_military_cat_name)

  toy_art_work = ["陶芸","ガラス","漆芸","金属工芸","絵画/タペストリ","版画","彫刻/オブジェクト","書","写真","その他"]
  toy_art_work_cat_name = "美術品"
  s_cat(toy_art_work, toy_art_work_cat_name)

  toy_art_goods = ["画材","額縁","その他"]
  toy_art_goods_cat_name = "アート用品"
  s_cat(toy_art_goods, toy_art_goods_cat_name)

  toy_other = ["トランプ/UNO","カルタ/百人一首","ダーツ","ビリヤード","麻雀","パズル/ジグソーパズル","囲碁/将棋","オセロ/チェス",
    "人生ゲーム","野球/サッカーゲーム","スポーツ","三輪車/乗り物","ヨーヨー","模型製作用品","鉄道","航空機","アマチュア無線","パチンコ/パチスロ","その他"]
  toy_other.each do |toy_other|
    Category.roots.find(6).children.last.children.create(name: toy_other)
  end

    # "コスメ・香水・美容

beauty_cat = ["ベースメイク","メイクアップ","ネイルケア","香水","スキンケア/基礎化粧品","ヘアケア","ボディケア","オーラルケア",
  "リラクゼーション","ダイエット","その他"]
beauty_cat.each do |beauty_cat|
  Category.find(7).children.create(name: beauty_cat)
end

  b_base = ["ファンデーション","化粧下地","コントロールカラー","BBクリーム","CCクリーム","コンシーラー",
    "フェイスパウダー","トライアルセット/サンプル","その他"]
  b_base_cat_name = "ベースメイク"
  s_cat(b_base, b_base_cat_name)

  b_makeup = ["アイシャドウ","口紅","リップグロス","リップライナー","チーク","フェイスカラー","マスカラ","アイライナー",
    "つけまつげ","アイブロウペンシル","パウダーアイブロウ","眉マスカラ","トライアルセット/サンプル",
    "メイク道具/化粧小物","美顔用品/美顔ローラー","その他"]
  b_makeup_cat_name = "メイクアップ"
  s_cat(b_makeup, b_makeup_cat_name)

  b_nail = ["ネイルカラー","カラージェル","ネイルベースコート/トップコート","ネイルアート用品","ネイルパーツ",
    "ネイルチップ/付け爪","手入れ用具","除光液","その他"]
  b_nail_cat_name = "ネイルケア"
  s_cat(b_nail, b_nail_cat_name)

  b_perfume = ["香水(女性用)","香水(男性用)","ユニセックス","ボディミスト","その他"]
  b_perfume_cat_name = "香水"
  s_cat(b_perfume, b_perfume_cat_name)

  b_skin = ["化粧水/ローション","乳液/ミルク","美容液","フェイスクリーム","洗顔料","クレンジング/メイク落とし",
    "パック/フェイスマスク","ジェル/ゲル","ブースター/導入液","アイケア","リップケア","トライアルセット/サンプル","洗顔グッズ","その他"]
  b_skin_cat_name = "スキンケア/基礎化粧品"
  s_cat(b_skin, b_skin_cat_name)

  b_hair = ["シャンプー","トリートメント","コンディショナー","リンス","スタイリング剤","カラーリング剤","ブラシ","その他"]
  b_hair_cat_name = "ヘアケア"
  s_cat(b_hair, b_hair_cat_name)

  b_body = ["オイル/クリーム","ハンドクリーム","ローション","日焼け止め/サンオイル","ボディソープ","入浴剤",
    "制汗/デオドラント","フットケア","その他"]
  b_body_cat_name = "ボディケア"
  s_cat(b_body, b_body_cat_name)

  b_oral = ["口臭防止/エチケット用品","歯ブラシ","その他"]
  b_oral_cat_name = "オーラルケア"
  s_cat(b_oral, b_oral_cat_name)

  b_relaxation = ["エッセンシャルオイル","芳香器","お香/香炉","キャンドル","リラクゼーショングッズ","その他"]
  b_relaxation_cat_name = "リラクゼーション"
  s_cat(b_relaxation, b_relaxation_cat_name)

  b_diet = ["ダイエット食品","エクササイズ用品","体重計","体脂肪計","その他"]
  b_diet_cat_name = "ダイエット"
  s_cat(b_diet, b_diet_cat_name)

  b_other = ["健康用品","看護/介護用品","救急/衛生用品","その他"]
  b_other.each do |b_other|
    Category.roots.find(7).children.last.children.create(name: b_other)
  end

# 家電
appliance_cat = ["スマートフォン/携帯電話","スマホアクセサリー", "PC/タブレット", "カメラ", "テレビ/映像機器", "オーディオ機器",
  "美容/健康", "冷暖房/空調", "生活家電", "その他"]

appliance_cat.each do |appliance_cat|
  Category.find(8).children.create(name: appliance_cat)
end

  appliance_sp = ["スマートフォン本体","バッテリー/充電器","携帯電話本体","PHS本体","その他"]
  appliance_sp_cat_name = "スマートフォン/携帯電話"
  s_cat(appliance_sp, appliance_sp_cat_name)
  
  appliance_sp_accessory = ["Android用ケース","iPhone用ケース","カバー","イヤホンジャック","ストラップ","フィルム","自撮り棒","その他"]
  appliance_sp_accessory_cat_name = "スマホアクセサリー"
  s_cat(appliance_sp_accessory, appliance_sp_accessory_cat_name)


  appliance_pc = ["タブレット","ノートPC","デスクトップ型PC","ディスプレイ","電子ブックリーダー","PC周辺機器","PCパーツ","その他"]
  appliance_pc_cat_name = "PC/タブレット"
  s_cat(appliance_pc, appliance_pc_cat_name)

  appliance_camera = ["デジタルカメラ","ビデオカメラ","レンズ(単焦点)","レンズ(ズーム)","フィルムカメラ","防犯カメラ","その他"]
  appliance_camera_cat_name = "カメラ"
  s_cat(appliance_camera, appliance_camera_cat_name)

  appliance_tv = ["テレビ","プロジェクター","ブルーレイレコーダー","DVDレコーダー","ブルーレイプレーヤー","DVDプレーヤー","映像用ケーブル","その他"]
  appliance_tv_cat_name = "テレビ/映像機器"
  s_cat(appliance_tv, appliance_tv_cat_name)

  appliance_audio = ["ポータブルプレーヤー","イヤフォン","ヘッドフォン","アンプ","スピーカー","ケーブル/シールド","ラジオ","その他"]
  appliance_audio_cat_name = "オーディオ機器"
  s_cat(appliance_audio, appliance_audio_cat_name)

  appliance_health = ["ヘアドライヤー","ヘアアイロン","美容機器","電気シェーバー","電動歯ブラシ","その他"]
  appliance_health_cat_name = "美容/健康"
  s_cat(appliance_health, appliance_health_cat_name)

  appliance_condition = ["エアコン","空気清浄器","加湿器","扇風機","除湿機","ファンヒーター ","電気ヒーター","オイルヒーター",
    "ストーブ","ホットカーペット","こたつ","電気毛布","その他"]
  appliance_condition_cat_name = "冷暖房/空調"
  s_cat(appliance_condition, appliance_condition_cat_name)
 
  appliance_life = ["冷蔵庫","洗濯機","炊飯器","電子レンジ/オーブン","調理機器","アイロン","掃除機","エスプレッソマシン",
    "コーヒーメーカー","衣類乾燥機","その他"]
  appliance_life_cat_name = "生活家電"
  s_cat(appliance_life, appliance_life_cat_name)
                                        
  appliance_other = ["その他"]
  appliance_other.each do |appliance_other|
    Category.roots.find(8).children.last.children.create(name: appliance_other)
  end

#スポーツ
sports_cat = ["ゴルフ", "フィッシング", "自転車", "トレーニング/エクササイズ", "野球", "サッカー/フットサル", "テニス",
   "スノーボード", "スキー", "その他スポーツ", "アウトドア", "その他"]

sports_cat.each do |sports_cat|
  Category.find(9).children.create(name: sports_cat)
end

  s_golf = ["クラブ","ウエア(男性用)","ウエア(女性用)","バッグ ","シューズ(男性用)","シューズ(女性用)","アクセサリー","その他"]
  s_golf_cat_name = "ゴルフ"
  s_cat(s_golf, s_golf_cat_name)

  s_fish = ["ロッド","リール","ルアー用品","ウエア","釣り糸/ライン","その他"]
  s_fish_cat_name = "フィッシング"
  s_cat(s_fish, s_fish_cat_name)
           
  s_bic = ["自転車本体","ウエア","パーツ","アクセサリー","バッグ","工具/メンテナンス","その他"]
  s_bic_cat_name = "自転車"
  s_cat(s_bic, s_bic_cat_name)

  s_traning = ["ランニング","ウォーキング","ヨガ","トレーニング用品","その他"]
  s_traning_cat_name = "トレーニング/エクササイズ"
  s_cat(s_traning, s_traning_cat_name)

  s_baseball = ["ウェア","シューズ","グローブ","バット","アクセサリー","防具","練習機器","記念グッズ","応援グッズ","その他"]
  s_traning_cat_name = "野球"
  s_cat(s_traning, s_traning_cat_name)

  s_soccer = ["ウェア","シューズ","ボール","アクセサリー","記念グッズ","応援グッズ","その他"]
  s_soccer_cat_name = "サッカー/フットサル"
  s_cat(s_soccer, s_soccer_cat_name)

  s_tennis = ["ラケット(硬式用)","ラケット(軟式用)","ウェア","シューズ","ボール","アクセサリー","記念グッズ","応援グッズ","その他"]
  s_tennis_cat_name = "テニス"
  s_cat(s_tennis, s_tennis_cat_name)

  s_snow_board = ["ボード","バインディング","ブーツ(男性用)","ブーツ(女性用)","ブーツ(子ども用)","ウエア/装備(男性用)",
    "ウエア/装備(女性用)","ウエア/装備(子ども用)","アクセサリー","バッグ","その他"]
  s_snow_board_cat_name = "スノーボード"
  s_cat(s_snow_board, s_snow_board_cat_name)

  s_ski = ["板","ブーツ(男性用)","ブーツ(女性用)","ブーツ(子ども用)","ビンディング","ウエア(男性用)","ウエア(女性用)",
    "ウエア(子ども用)","ストック","その他"]
  s_ski_cat_name = "スキー"
  s_cat(s_ski, s_ski_cat_name)

  s_other_sports = ["ダンス/バレエ","サーフィン","バスケットボール","バドミントン","バレーボール","スケートボード",
    "陸上競技","ラグビー","アメリカンフットボール","ボクシング","ボウリング","その他"]
  s_other_sports_cat_name = "その他スポーツ"
  s_cat(s_other_sports, s_other_sports_cat_name)

  s_outdoor = ["テント/タープ","ライト/ランタン","寝袋/寝具","テーブル/チェア","ストーブ/コンロ","調理器具","食器","登山用品","その他"]
  s_outdoor_cat_name = "アウトドア"
  s_cat(s_outdoor, s_outdoor_cat_name)

  s_other = ["旅行用品", "その他"]
  s_other.each do |s_other|
    Category.roots.find(9).children.last.children.create(name: s_other)
  end

  #ハンドメイド

  hand_cat = ["アクセサリー(女性用)","ファッション/小物","アクセサリー/時計","日用品/インテリア",
    "趣味/おもちゃ","キッズ/ベビー","素材/材料","二次創作物","その他"]

  hand_cat.each do |hand_cat|
    Category.find(10).children.create(name: hand_cat)
  end

  h_accessory = ["ピアス","イヤリング","ネックレス","ブレスレット","リング","チャーム",
    "ヘアゴム","アンクレット","その他"]
  h_accessory_cat_name = "アクセサリー(女性用)"
  s_cat(h_accessory, h_accessory_cat_name)

  h_fashion = ["バッグ(女性用)","バッグ(男性用)","財布(女性用)","財布(男性用)","ファッション雑貨","その他"]
  h_fashion_cat_name = "ファッション/小物"
  s_cat(h_fashion, h_fashion_cat_name)

  
  h_clock = ["アクセサリー(男性用)","時計(女性用)","時計(男性用)","その他"]
  h_clock_cat_name = "アクセサリー/時計"
  s_cat(h_clock, h_clock_cat_name)

  h_interior = ["キッチン用品","家具","文房具","アート/写真","アロマ/キャンドル","フラワー/ガーデン","その他"]
  h_interior_cat_name = "日用品/インテリア"
  s_cat(h_interior, h_interior_cat_name)

  h_hobby = ["クラフト/布製品","おもちゃ/人形","その他"]
  h_hobby_cat_name = "趣味/おもちゃ"
  s_cat(h_hobby, h_hobby_cat_name)

  h_kids = ["ファッション雑貨","スタイ/よだれかけ","外出用品","ネームタグ","その他"]
  h_kids_cat_name = "キッズ/ベビー"
  s_cat(h_kids, h_kids_cat_name)

  h_material = ["各種パーツ","生地/糸","型紙/パターン","その他"]
  h_material_cat_name = "素材/材料"
  s_cat(h_material, h_material_cat_name)

  h_production = ["Ingress","クリエイターズ宇宙兄弟"]
  h_fashion_cat_name = "二次創作物"
  s_cat(h_fashion, h_fashion_cat_name)

  h_other = ["すべて"]
  h_other.each do |h_other|
    Category.roots.find(10).children.last.children.create(name: h_other)
  end

  #チケット

ticket_cat = ["音楽","スポーツ","演劇/芸能","イベント","映画","施設利用券","優待券/割引券","その他"]
ticket_cat.each do |ticket_cat|
  Category.find(11).children.create(name: ticket_cat)
end

  ticket_music = ["男性アイドル","女性アイドル","韓流","国内アーティスト","海外アーティスト","音楽フェス","声優/アニメ","その他"]
  ticket_music_cat_name = "音楽"
  s_cat(ticket_music, ticket_music_cat_name)

  ticket_sports = ["サッカー","野球","テニス","格闘技/プロレス","相撲/武道","ゴルフ","バレーボール","バスケットボール","モータースポーツ","ウィンタースポーツ","その他"]
  ticket_sports.each do |ticket_sports|
    Category.find(11).children[1].children.create(name: ticket_sports)
  end
  ticket_theater = ["ミュージカル","演劇","伝統芸能","落語","お笑い","オペラ","サーカス","バレエ","その他"]
  ticket_theater_cat_name = "演劇/芸能"
  s_cat(ticket_theater, ticket_theater_cat_name)

  ticket_event = ["声優/アニメ","キッズ/ファミリー","トークショー/講演会","その他"]
  ticket_event_cat_name = "イベント"
  s_cat(ticket_event, ticket_event_cat_name)

  ticket_movie = ["邦画","洋画","その他",]
  ticket_movie_cat_name = "映画"
  s_cat(ticket_movie, ticket_movie_cat_name)

  ticket_facility = ["遊園地/テーマパーク","美術館/博物館","スキー場","ゴルフ場","フィットネスクラブ",
    "プール","ボウリング場","水族館","動物園","その他"]
  ticket_facility_cat_name = "施設利用券"
  s_cat(ticket_facility, ticket_facility_cat_name)

  ticket_discount = ["ショッピング","レストラン/食事券","フード/ドリンク券","宿泊券","その他"]
  ticket_discount_cat_name = "優待券/割引券"
  s_cat(ticket_discount, ticket_discount_cat_name)

  ticket_other = ["すべて"]
  ticket_other.each do |ticket_other|
    Category.roots.find(11).children.last.children.create(name: ticket_other)
  end

# 自転車・オートバイ

automobile_cat = ["自動車本体","自動車タイヤ/ホイール","自動車パーツ","自動車アクセサリー","オートバイ車体","オートバイパーツ","オートバイアクセサリー"]
automobile_cat.each do |automobile_cat|
  Category.find(12).children.create(name: automobile_cat)
end

  automobile_body = ["国内自動車本体","外国自動車本体"]
  automobile_body_cat_name = "自動車本体"
  s_cat(automobile_body, automobile_body_cat_name)

  automobile_wheel = ["タイヤ/ホイールセット","タイヤ","ホイール","その他"]
  automobile_wheel_cat_name = "自動車タイヤ/ホイール"
  s_cat(automobile_wheel, automobile_wheel_cat_name)

  automobile_parts = ["サスペンション","ブレーキ","外装、エアロパーツ","ライト","内装品、シート","ステアリング",
    "マフラー・排気系","エンジン、過給器、冷却装置","クラッチ、ミッション、駆動系","電装品","補強パーツ","汎用パーツ","外国自動車用パーツ","その他"]
  automobile_parts_cat_name = "自動車パーツ"
  s_cat(automobile_parts, automobile_parts_cat_name)

  automobile_accessory = ["車内アクセサリー","カーナビ","カーオーディオ","車外アクセサリー","メンテナンス用品",
    "チャイルドシート","ドライブレコーダー","レーダー探知機","カタログ/マニュアル","セキュリティ","ETC","その他"]
  automobile_accessory_cat_name = "自動車アクセサリー"
  s_cat(automobile_accessory, automobile_accessory_cat_name)

  motorcycle_body = ["すべて"]
  motorcycle_body_cat_name = "オートバイ車体"
  s_cat(motorcycle_body, motorcycle_body_cat_name)

  motorcycle_parts = ["タイヤ","マフラー","エンジン、冷却装置","カウル、フェンダー、外装","サスペンション",
    "ホイール","シート","ブレーキ","タンク","ライト、ウィンカー","チェーン、スプロケット、駆動系","メーター",
    "電装系","ミラー","外国オートバイ用パーツ","その他"]
  motorcycle_parts_cat_name = "オートバイパーツ"
  s_cat(motorcycle_parts, motorcycle_parts_cat_name)

  motorcycle_accessory = ["ヘルメット/シールド","バイクウエア/装備","アクセサリー","メンテナンス",
    "カタログ/マニュアル","その他"]
  motorcycle_accessory_cat_name = "オートバイアクセサリー"
  s_cat(motorcycle_accessory, motorcycle_accessory_cat_name)

  #その他

other_cat = ["まとめ売り", "ペット用品", "食品", "飲料/酒", "日用品/生活雑貨/旅行", "アンティーク/コレクション",
  "文房具/事務用品", "事務/店舗用品", "その他"]
other_cat.each do |other_cat|
  Category.find(13).children.create(name: other_cat)
end

  other_summary = ["すべて"]
  other_summary_cat_name = "まとめ売り"
  s_cat(other_summary, other_summary_cat_name)

  other_pet = ["ペットフード","犬用品","猫用品","魚用品/水草","小動物用品","爬虫類/両生類用品","かご/おり","鳥用品","虫類用品","その他"]
  other_pet_cat_name = "ペット用品"
  s_cat(other_pet, other_pet_cat_name)

  other_food = ["菓子","米","野菜","果物","調味料","魚介類(加工食品)","肉類(加工食品)","その他 加工食品","その他"]
  other_food_cat_name = "食品"
  s_cat(other_food, other_food_cat_name)

  other_drink = ["コーヒー","ソフトドリンク","ミネラルウォーター","茶","ウイスキー","ワイン",
    "ブランデー","焼酎","日本酒","ビール、発泡酒","その他"]
  other_drink_cat_name = "飲料/酒"
  s_cat(other_drink, other_drink_cat_name)

  other_life = ["タオル/バス用品","日用品/生活雑貨","洗剤/柔軟剤","旅行用品","防災関連グッズ","その他"]
  other_life_cat_name = "日用品/生活雑貨/旅行"
  s_cat(other_life, other_life_cat_name)

  other_collection = ["雑貨","工芸品","家具","印刷物","その他"]
  other_collection_cat_name = "アンティーク/コレクション"
  s_cat(other_collection, other_collection_cat_name)

  other_stationery = ["筆記具","ノート/メモ帳","テープ/マスキングテープ","カレンダー/スケジュール","アルバム/スクラップ",
    "ファイル/バインダー","はさみ/カッター","カードホルダー/名刺管理","のり/ホッチキス","その他"]
  other_stationery_cat_name = "文房具/事務用品"
  s_cat(other_stationery, other_stationery_cat_name)

  other_office = ["オフィス用品一般","オフィス家具","店舗用品","OA機器","ラッピング/包装","その他"]
  other_office_cat_name = "事務/店舗用品"
  s_cat(other_office, other_office_cat_name)

  other_other = ["すべて"]
  other_other.each do |other_other|
    Category.roots.find(13).children.last.children.create(name: other_other)
  end

