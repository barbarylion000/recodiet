class Graff < ApplicationRecord
    def index
        @meeting = Meeting.group_by_day(:name).count
    end
end
