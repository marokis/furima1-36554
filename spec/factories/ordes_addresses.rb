FactoryBot.define do
  factory :order_address do
    postal_code       { "123-4567" }
    prefecture_id     { 2 }
    city              { "テスト市" }
    place             { "テスト1-2-3" }
    building          { "テストビル" }
    phone_number      { "00000000000" }
    token             {"tok_abcdefghijk00000000000000000"}
  end
end