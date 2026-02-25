-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vwg_settings_group', 'vwg_uninstall_settings_group', 'vwg_settings_icon', 'vwg_settings_custom_svg_icon', 'vwg_settings_icon_color', 'vwg_settings_video_controls', 'vwg_settings_loop', 'vwg_settings_muted', 'vwg_settings_autoplay', 'vwg_settings_show_first', 'vwg_settings_video_adapt_sizes', 'vwg_settings_optimized_thumbnails', 'vwg_settings_convert_on_upload', 'vwg_settings_remove_settings_data', 'vwg_settings_remove_videos_data', 'vwg_pro_settings', 'vwg_monthly_notice_dismissed', 'abl_vwg_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vwg_video_url', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('vwg_video_url', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('vwg_video_url', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vwg_video_url', '_wp_attachment_image_alt');

