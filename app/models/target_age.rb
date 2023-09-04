class TargetAge < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '3ヶ月〜' },
    { id: 3, name: '4ヶ月〜' },
    { id: 4, name: '5ヶ月〜' },
    { id: 5, name: '6ヶ月〜' },
    { id: 6, name: '7ヶ月〜' },
    { id: 7, name: '8ヶ月〜' },
    { id: 8, name: '9ヶ月〜' },
    { id: 9, name: '10ヶ月〜' },
    { id: 10, name: '11ヶ月〜' },
    { id: 11, name: '12ヶ月〜' }
  ]

  include ActiveHash::Associations
  has_many :posts

  end