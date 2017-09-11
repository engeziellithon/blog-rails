class Ckeditor::Picture < Ckeditor::Asset
 
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
  validates_attachment_size :data, less_than: 2.megabytes
  validates_attachment_content_type :data, content_type: /\Aimage/

  def url_content
    url(:content)
  end
end
