-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webyx_fe_hide_admin_top_bar', 'webyx_fe_menu');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_page_settings', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_page_settings', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_page_settings', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_page_settings', '_wp_page_template');

