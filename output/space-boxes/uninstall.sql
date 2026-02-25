-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ba_spacebox_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('space_boxes_img_link', 'ba_spacebox_single_link', '_wp_page_template', 'foo');
DELETE FROM wp_usermeta WHERE meta_key IN ('space_boxes_img_link', 'ba_spacebox_single_link', '_wp_page_template', 'foo');
DELETE FROM wp_termmeta WHERE meta_key IN ('space_boxes_img_link', 'ba_spacebox_single_link', '_wp_page_template', 'foo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('space_boxes_img_link', 'ba_spacebox_single_link', '_wp_page_template', 'foo');

