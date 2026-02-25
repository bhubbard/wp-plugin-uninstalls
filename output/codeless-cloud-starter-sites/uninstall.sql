-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('theme_switched', 'specular_purchase_info', 'codeless_ob_plugins_installed', 'codeless_blocks_settings_redirect', 'sidebars_widgets', 'active_sitewide_plugins', '_wc_activation_redirect', 'wpforms_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';
DELETE FROM wp_options WHERE option_name LIKE '%-widget';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');

