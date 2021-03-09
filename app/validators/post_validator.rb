class PostValidator < ActiveModel::Validator
    def validate(record)
        unless record.title.match?(/Won't Believe|Secret|Guess|Top \d/)
            record.errors[:title] << "Your title isn't click-bait-y enough!"
        end
    end
  end 