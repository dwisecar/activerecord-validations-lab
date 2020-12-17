class TitleValidator < ActiveModel::Validator

    def validate(record)
        if record.title
            unless record.title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
                record.errors[:title] << "That title is too boring."
            end
        end
    end

end