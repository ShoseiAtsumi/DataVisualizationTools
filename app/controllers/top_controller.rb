class TopController < ApplicationController
    def index
        @channels = Channel.left_joins(:ChannelInfo)
        .select("
            channels.channel_id, 
            channel_infos.channel_name, 
            MAX(channel_infos.serial), 
            MAX(channel_infos.channel_subscribers) AS channel_subscribers, 
            MAX(channel_infos.channel_video_count) AS channel_video_count, 
            MAX(channel_infos.channel_video_view_count) AS channel_video_view_count")
            .group(:channel_id)
    end
end
