class Meeting < ApplicationRecord
     VALID_NAME_REGEX =0-9
     VALID_FAT_REGEX =0-9
    validates :name, presence: true,length: {maximum: 2}
    validates :fat, presence: true,length: {maximum: 2}
end
