-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('republication_tracker_tool_default_post_distribution', 'republication_tracker_tool_display_attribution', 'republication_tracker_tool_default_attachment_distribution', 'republication_tracker_tool_media_distribution', 'republication_tracker_tool_analytics_ga4_id', 'republication_tracker_tool_analytics_ga4_secret', 'republication_tracker_additional_tracking_code', 'republication_tracker_tool_policy', 'republication_tracker_tool_analytics_id', 'republication_tracker_tool_license', 'republication_tracker_tool_enable_plain_text', 'parsely');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('republication-tracker-tool-hide-widget', 'republication_tracker_tool_sharing', 'newspack_post_subtitle');
DELETE FROM wp_usermeta WHERE meta_key IN ('republication-tracker-tool-hide-widget', 'republication_tracker_tool_sharing', 'newspack_post_subtitle');
DELETE FROM wp_termmeta WHERE meta_key IN ('republication-tracker-tool-hide-widget', 'republication_tracker_tool_sharing', 'newspack_post_subtitle');
DELETE FROM wp_commentmeta WHERE meta_key IN ('republication-tracker-tool-hide-widget', 'republication_tracker_tool_sharing', 'newspack_post_subtitle');

