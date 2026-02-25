-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('psres_max_image_width', 'psres_max_image_height', 'psres_thumbnail_crop', 'psres_num_thumb', 'psres_show_captions', 'psres_show_controls', 'psres_auto_play', 'psres_hide_thumbs', 'psres_delay', 'psres_enable_history', 'psres_play_text', 'psres_pause_text', 'psres_reset_css', 'psres_thumbnail_width', 'psres_thumbnail_height', 'psres_button_size', 'psres_thumbnail_margin');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

