class RenameChannnelVideoCountColumnToChannelInfos < ActiveRecord::Migration[5.2]
  def change
    rename_column :channel_infos, :channnel_video_count, :channel_video_count
  end
end
