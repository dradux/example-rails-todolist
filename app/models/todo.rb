class Todo < ActiveRecord::Base

    validates :name, presence: true

    #callbacks
    after_save :create_cache_record

    private
        def create_cache_record
            #create and write the redis data.
            cache_id = "todo_" + self.id.to_s
            cache_data = DateTime.now.to_s
            #Rails.logger.debug "*** writing to cache: id=" + cache_id + "; data=" + cache_data
            $redis.set(cache_id,cache_data)
        end

end
