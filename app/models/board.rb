# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
end
