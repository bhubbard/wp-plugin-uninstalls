-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('VWvideoShareOptions', 'VWpaidMembershipOptions', 'widget_videowhisper_videos');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('video-views', 'video-lastview', 'video-source-file', 'video-duration', 'video-width', 'video-height', 'video-rotate', 'video-bitrate', 'video-codec-video', 'video-codec-audio', 'video-adaptive', 'space-statistics', 'space-total', 'video-source-size', 'video-thumbnail', 'rateStarReview_rating', 'video-snapshot', 'convert-queued', 'bp_activity_id', 'tvshow-seasons');
DELETE FROM wp_usermeta WHERE meta_key IN ('video-views', 'video-lastview', 'video-source-file', 'video-duration', 'video-width', 'video-height', 'video-rotate', 'video-bitrate', 'video-codec-video', 'video-codec-audio', 'video-adaptive', 'space-statistics', 'space-total', 'video-source-size', 'video-thumbnail', 'rateStarReview_rating', 'video-snapshot', 'convert-queued', 'bp_activity_id', 'tvshow-seasons');
DELETE FROM wp_termmeta WHERE meta_key IN ('video-views', 'video-lastview', 'video-source-file', 'video-duration', 'video-width', 'video-height', 'video-rotate', 'video-bitrate', 'video-codec-video', 'video-codec-audio', 'video-adaptive', 'space-statistics', 'space-total', 'video-source-size', 'video-thumbnail', 'rateStarReview_rating', 'video-snapshot', 'convert-queued', 'bp_activity_id', 'tvshow-seasons');
DELETE FROM wp_commentmeta WHERE meta_key IN ('video-views', 'video-lastview', 'video-source-file', 'video-duration', 'video-width', 'video-height', 'video-rotate', 'video-bitrate', 'video-codec-video', 'video-codec-audio', 'video-adaptive', 'space-statistics', 'space-total', 'video-source-size', 'video-thumbnail', 'rateStarReview_rating', 'video-snapshot', 'convert-queued', 'bp_activity_id', 'tvshow-seasons');

