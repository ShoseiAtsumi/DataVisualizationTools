class AddColumnChannelInfos < ActiveRecord::Migration[5.2]
  def up
    add_column :channel_infos, :channel_video_view_count, :integer
  end
end
