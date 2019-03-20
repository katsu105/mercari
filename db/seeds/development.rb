# 大カテゴリー
l_cat = ["レディース", "メンズ", "ベビー・キッズ","インテイリア・住まい・小物" ,"本・音楽・ゲーム","おもちゃ・ホビー・グッズ","コスメ・香水・美容","家電・スマホ・カメラ","スポーツ・レジャー","ハンドメイド","チケット","自動車・オートバイ","その他"]

l_cat.each do |l_cat| 
  Category.create(name: l_cat)
end

# レディース中カテゴリー
  lady_cat = ["トップス","ジャケット/アウター","パンツ","スカート","ワンピース","靴","ルームウェア/パジャマ","レッグウェア","帽子","バッグ","アクセサリー","ヘアアクセサリー","小物","時計","ウィッグ/エクステ","浴衣/水着","スーツ/フォーマル/ドレス","マタニティ","その他"]

  lady_cat.each do |lady_cat|
    Category.find(1).children.create(name: lady_cat)
  end

#レディース小カテゴリー

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
    Category.where(name: "その他").first.children.create(name: l_other)
  end






# メンズ中カテゴリー
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
    Category.where(name: "その他")[1].children.create(name: m_other)
  end
 



# キッズ中カテゴリー
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
  #キッズ小カテゴリー
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





# ["","","","","","","","","","","","","","","","","","","","","","","","","",""]