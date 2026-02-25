-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mantrabrain_starter_sites_admin_footer_text_rated', 'mantrabrain_starter_sites_activated_id', 'sidebars_widgets', 'mantrabrain_get_theme_demo_configuration', '_mantrabrain_starter_sites_activation_redirect', '_wc_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'elementor_scheme_%';
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_url', '_elementor_data', 'panels_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_url', '_elementor_data', 'panels_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_url', '_elementor_data', 'panels_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_url', '_elementor_data', 'panels_data', '_wp_attachment_is_custom_header', '_menu_item_menu_item_parent', '_thumbnail_id');

