-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ms_hide_all_ads_until', 'ms_ads_first_seen_on', 'metaslider_global_settings', 'metaslider_default_settings', 'active_sitewide_plugins', 'metaslider_tour_cancelled_on', 'metaslider_legacy_notification', 'metaslider_new_user', 'metaslider_pro_settings', 'metaslider-themes', 'metaslider_systemcheck', 'scoper_disabled_access_types', 'ms_was_installed_on', 'metaslider_activate', 'metaslider_plugin_version', 'metaslider_plugin_path');
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';
DELETE FROM wp_options WHERE option_name LIKE 'metaslider_plugin_%';
DELETE FROM wp_options WHERE option_name LIKE 'metaslider_pro_plugin_%';
DELETE FROM wp_options WHERE option_name LIKE 'metaslider_lightbox_plugin_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('metaslider_slideshow_theme', 'ml-slider_settings', '_wp_attachment_image_alt', 'metaslider_copy_of', 'ml-slider_type', '_thumbnail_id', 'ml-slider_video_id', 'ml-slider_video_url', 'ml-slider_inherit_image_title', 'ml-slider_inherit_image_alt', 'ml-slider_inherit_image_caption', 'ml-slider_caption_source', '_wp_attachment_backup_sizes', '_wp_attachment_metadata', 'ml-slider_crop_position', '_meta_slider_slide_is_hidden', 'ml-slider_title', 'ml-slider_link-alt', 'ml-slider_url', 'ml-slider_new_window', '_meta_slider_slide_is_repeated', '_meta_slider_slide_repeat_every', 'metaslider_view');
DELETE FROM wp_usermeta WHERE meta_key IN ('metaslider_slideshow_theme', 'ml-slider_settings', '_wp_attachment_image_alt', 'metaslider_copy_of', 'ml-slider_type', '_thumbnail_id', 'ml-slider_video_id', 'ml-slider_video_url', 'ml-slider_inherit_image_title', 'ml-slider_inherit_image_alt', 'ml-slider_inherit_image_caption', 'ml-slider_caption_source', '_wp_attachment_backup_sizes', '_wp_attachment_metadata', 'ml-slider_crop_position', '_meta_slider_slide_is_hidden', 'ml-slider_title', 'ml-slider_link-alt', 'ml-slider_url', 'ml-slider_new_window', '_meta_slider_slide_is_repeated', '_meta_slider_slide_repeat_every', 'metaslider_view');
DELETE FROM wp_termmeta WHERE meta_key IN ('metaslider_slideshow_theme', 'ml-slider_settings', '_wp_attachment_image_alt', 'metaslider_copy_of', 'ml-slider_type', '_thumbnail_id', 'ml-slider_video_id', 'ml-slider_video_url', 'ml-slider_inherit_image_title', 'ml-slider_inherit_image_alt', 'ml-slider_inherit_image_caption', 'ml-slider_caption_source', '_wp_attachment_backup_sizes', '_wp_attachment_metadata', 'ml-slider_crop_position', '_meta_slider_slide_is_hidden', 'ml-slider_title', 'ml-slider_link-alt', 'ml-slider_url', 'ml-slider_new_window', '_meta_slider_slide_is_repeated', '_meta_slider_slide_repeat_every', 'metaslider_view');
DELETE FROM wp_commentmeta WHERE meta_key IN ('metaslider_slideshow_theme', 'ml-slider_settings', '_wp_attachment_image_alt', 'metaslider_copy_of', 'ml-slider_type', '_thumbnail_id', 'ml-slider_video_id', 'ml-slider_video_url', 'ml-slider_inherit_image_title', 'ml-slider_inherit_image_alt', 'ml-slider_inherit_image_caption', 'ml-slider_caption_source', '_wp_attachment_backup_sizes', '_wp_attachment_metadata', 'ml-slider_crop_position', '_meta_slider_slide_is_hidden', 'ml-slider_title', 'ml-slider_link-alt', 'ml-slider_url', 'ml-slider_new_window', '_meta_slider_slide_is_repeated', '_meta_slider_slide_repeat_every', 'metaslider_view');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ml-slider_hide_slide_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ml-slider_hide_slide_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ml-slider_hide_slide_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ml-slider_hide_slide_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ml-slider_hide_caption_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ml-slider_hide_caption_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ml-slider_hide_caption_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ml-slider_hide_caption_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ml-slider_inherit_image_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ml-slider_inherit_image_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ml-slider_inherit_image_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ml-slider_inherit_image_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ml-slider_hide_arrows_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ml-slider_hide_arrows_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ml-slider_hide_arrows_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ml-slider_hide_arrows_%';

