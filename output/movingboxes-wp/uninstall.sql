-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mb_template', 'mb_nav_format', 'mb_easing', 'mb_start_panel', 'mb_width', 'mb_panel_width', 'mb_reduced_size', 'mb_fixed_height', 'mb_speed', 'mb_wrap', 'mb_hash_tags', 'mb_show_nav', 'mb_structure', 'mb_current_class', 'mb_tooltip');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mb_all_images', 'mb_active_images', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('mb_all_images', 'mb_active_images', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('mb_all_images', 'mb_active_images', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mb_all_images', 'mb_active_images', '_wp_attachment_image_alt');

