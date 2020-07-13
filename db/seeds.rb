Animal.delete_all
Vegetable.delete_all

Tr = Struct.new(:ja, :en)
[
  Tr.new('うさぎ', 'Rabbit'),
  Tr.new('いぬ', 'Dog'),
  Tr.new('ねこ', 'Cat')
].each do |tr|
  I18n.locale = :ja
  animal = Animal.new(title: tr.ja)
  animal.save!
  I18n.locale = :en
  animal.title = tr.en
  animal.save!
end

[
  Tr.new('にんじん', 'Carror'),
  Tr.new('きゃべつ', 'Cabbage'),
  Tr.new('たまねぎ', 'Onion')
].each do |tr|
  I18n.locale = :ja
  vegetable = Vegetable.new(title: tr.ja)
  vegetable.save!
  I18n.locale = :en
  vegetable.title = tr.en
  vegetable.save!
end
