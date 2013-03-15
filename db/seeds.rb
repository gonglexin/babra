# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: '职业装' },
                              { name: '工作服' },
                              { name: 'T恤衫、文化衫' },
                              { name: '个性定制' }])

categories[0].children.create(name: '男士西装')
categories[0].children.create(name: '男士衬衣')
categories[0].children.create(name: '女士职业套装')
categories[0].children.create(name: '女士衬衣')
categories[0].children.create(name: '酒店制服')

categories[1].children.create(name: '工程服')
categories[1].children.create(name: '保洁服')
categories[1].children.create(name: '防静电制服')
categories[1].children.create(name: '保安服')
categories[1].children.create(name: '促销服')
categories[1].children.create(name: '医护服')
categories[1].children.create(name: '美容服')

categories[2].children.create(name: 'T恤衫')
categories[2].children.create(name: '文化衫')

(1..20).each do |i|
  Topic.create(title: "测试标题 - #{i}", body: "测试内容 - #{i}")
end
