class Tveet < ApplicationRecord
  validates :body, presence: true

  after_create_commit { broadcast_prepend_to 'tveets' }
  after_update_commit { broadcast_replace_to 'tveets' }
  after_destroy_commit { broadcast_remove_to 'tveets' }
end
