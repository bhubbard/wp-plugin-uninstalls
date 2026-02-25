-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sss_delete_all_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'general_slider_group', '_gs_meta_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'general_slider_group', '_gs_meta_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'general_slider_group', '_gs_meta_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'general_slider_group', '_gs_meta_key');

