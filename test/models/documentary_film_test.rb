# == Schema Information
#
# Table name: documentary_films
#
#  id         :bigint           not null, primary key
#  name       :string
#  synopsis   :text
#  director   :string
#  validated  :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class DocumentaryFilmTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
