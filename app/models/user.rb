class User < ActiveRecord::Base
  has_attached_file :avatar,
                    :path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
                    :url => "/system/:attachment/:id/:basename_:style.:extension",
                    :styles => {
                        :thumb    => ['100x100#',  :jpg, :quality => 70],
                        :medium  => ['480x480#',  :jpg, :quality => 70]}

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
