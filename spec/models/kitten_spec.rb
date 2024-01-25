# == Schema Information
#
# Table name: kittens
#
#  id         :bigint           not null, primary key
#  name       :string
#  age        :integer
#  cuteness   :integer
#  softness   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Kitten, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
