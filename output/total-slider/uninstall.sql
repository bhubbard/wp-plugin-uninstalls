-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('total_slider_general_options', 'total_slider_dataformat_version', 'total_slider_upgrade_v1.0.x_to_v1.1', 'total_slider_slide_groups');
DELETE FROM wp_options WHERE option_name LIKE 'total_slider_grptpl_%';
DELETE FROM wp_options WHERE option_name LIKE 'total_slider_slides_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_thumbnail_id', 'total_slider_meta_legacy_bgurl', 'total_slider_meta_link', 'total_slider_meta_title_pos_x', 'total_slider_meta_title_pos_y', 'total_slider_meta_sequence');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_thumbnail_id', 'total_slider_meta_legacy_bgurl', 'total_slider_meta_link', 'total_slider_meta_title_pos_x', 'total_slider_meta_title_pos_y', 'total_slider_meta_sequence');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_thumbnail_id', 'total_slider_meta_legacy_bgurl', 'total_slider_meta_link', 'total_slider_meta_title_pos_x', 'total_slider_meta_title_pos_y', 'total_slider_meta_sequence');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_thumbnail_id', 'total_slider_meta_legacy_bgurl', 'total_slider_meta_link', 'total_slider_meta_title_pos_x', 'total_slider_meta_title_pos_y', 'total_slider_meta_sequence');

