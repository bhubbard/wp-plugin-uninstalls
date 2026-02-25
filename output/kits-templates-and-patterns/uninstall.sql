-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getbowtied_demo_importer_admin_footer_text_rated', 'getbowtied_demo_importer_activated_id', 'elementor_load_fa4_shim', 'elementor_active_kit', 'sidebars_widgets', '_getbowtied_demo_importer_activation_redirect', 'getbowtied_demo_importer_packages', '_wc_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'elementor_scheme_%';
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('getbowtied-ktp-welcome-pointer-dismissed', '_menu_item_url', '_elementor_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('getbowtied-ktp-welcome-pointer-dismissed', '_menu_item_url', '_elementor_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('getbowtied-ktp-welcome-pointer-dismissed', '_menu_item_url', '_elementor_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('getbowtied-ktp-welcome-pointer-dismissed', '_menu_item_url', '_elementor_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');

