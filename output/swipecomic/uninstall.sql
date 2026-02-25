-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swipecomic_default_zoom', 'swipecomic_default_pan', 'swipecomic_episodes_per_page', 'swipecomic_show_lightbox_tools', 'swipecomic_thumbnail_size', 'swipecomic_media_optimization', 'swipecomic_delete_on_remove', 'swipecomic_use_url_prefix', 'swipecomic_url_prefix', 'swipecomic_version', 'swipecomic_flush_rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_swipecomic_images', '_wp_attachment_image_alt', '_swipecomic_episode_number', '_swipecomic_default_zoom_type', '_swipecomic_default_zoom_value', '_swipecomic_default_pan_type', '_swipecomic_default_pan_x', '_swipecomic_default_pan_y', 'series_cover_image_id', 'series_logo_id', 'series_logo_position', '_swipecomic_chapter_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_swipecomic_images', '_wp_attachment_image_alt', '_swipecomic_episode_number', '_swipecomic_default_zoom_type', '_swipecomic_default_zoom_value', '_swipecomic_default_pan_type', '_swipecomic_default_pan_x', '_swipecomic_default_pan_y', 'series_cover_image_id', 'series_logo_id', 'series_logo_position', '_swipecomic_chapter_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_swipecomic_images', '_wp_attachment_image_alt', '_swipecomic_episode_number', '_swipecomic_default_zoom_type', '_swipecomic_default_zoom_value', '_swipecomic_default_pan_type', '_swipecomic_default_pan_x', '_swipecomic_default_pan_y', 'series_cover_image_id', 'series_logo_id', 'series_logo_position', '_swipecomic_chapter_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_swipecomic_images', '_wp_attachment_image_alt', '_swipecomic_episode_number', '_swipecomic_default_zoom_type', '_swipecomic_default_zoom_value', '_swipecomic_default_pan_type', '_swipecomic_default_pan_x', '_swipecomic_default_pan_y', 'series_cover_image_id', 'series_logo_id', 'series_logo_position', '_swipecomic_chapter_number');

