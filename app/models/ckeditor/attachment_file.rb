class Ckeditor::AttachmentFile < Ckeditor::Asset
  has_attached_file :data,
                    :storage => :cloudinary,
                    :path => ':id/:style/:filename',
                    :styles => { :data => '200x200>' },
                    :cloudinary_url_options => {
                        :default => {
                            :secure => true
                        },
                        :styles => {
                            :avatar => {
                                :quality => 10,
                                :transformation => [ { :angle => 20 } ]
                            }
                        }
                    }

  validates_attachment_presence :data
  validates_attachment_size :data, less_than: 100.megabytes
  do_not_validate_attachment_file_type :data

  def url_thumb
    @url_thumb ||= Ckeditor::Utils.filethumb(filename)
  end
end
