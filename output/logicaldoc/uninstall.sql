-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rss_language', 'acf_repeater_ac', 'acf_gallery_ac', 'acf_options_page_ac', 'acf_flexible_content_ac', 'acf_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rule', 'allorany', 'position', 'layout', 'hide_on_screen', '_wp_page_template', 'field_group_layout', 'show_on_page', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('rule', 'allorany', 'position', 'layout', 'hide_on_screen', '_wp_page_template', 'field_group_layout', 'show_on_page', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('rule', 'allorany', 'position', 'layout', 'hide_on_screen', '_wp_page_template', 'field_group_layout', 'show_on_page', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rule', 'allorany', 'position', 'layout', 'hide_on_screen', '_wp_page_template', 'field_group_layout', 'show_on_page', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

