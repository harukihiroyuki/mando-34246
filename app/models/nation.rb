class Nation < ActiveHash::Base
 self.data = [
  { id: 1, name: '--' },
  { id: 2, name: 'スーダン' },
  { id: 3, name: 'ベナン' },
  { id: 4, name: 'チャド' },
  { id: 5, name: 'ネパール' },
  { id: 6, name: 'マリ' },
  { id: 7, name: 'ギニアビサウ' },
  { id: 8, name: 'エチオピア' },
  { id: 9, name: 'コモロ' },
  { id: 10, name: 'タジキスタン' },
  { id: 11, name: 'ハイチ' },
  { id: 12, name: 'ルワンダ' },
  { id: 13, name: 'ギニア' },
  { id: 14, name: 'ブルキナファソ' },
  { id: 15, name: 'リベリア' },
  { id: 16, name: 'ウガンダ' },
  { id: 17, name: 'トーゴ' },
  { id: 18, name: 'アフガニスタン' },
  { id: 19, name: 'ニジェール' },
  { id: 20, name: 'シエラレオネ' },
  { id: 21, name: 'ガンビア' },
  { id: 22, name: 'マダガスカル' },
  { id: 23, name: 'コンゴ' },
  { id: 24, name: 'モザンビーク' },
  { id: 25, name: 'イエメン' },
  { id: 26, name: '中央アフリカ' },
  { id: 27, name: 'マラウイ' },
  { id: 28, name: 'ブルンジ' },
  { id: 29, name: '南スーダン' },
 ]

 include ActiveHash::Associations
 has_many :items

end
