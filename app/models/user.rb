class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :img_name, ImgNameUploader

  enum sex: {男:0, 女:1} #enumを使うとプログラムからは文字列でアクセスでき、データベースには整数値で保存される属性を作成できる。
end
