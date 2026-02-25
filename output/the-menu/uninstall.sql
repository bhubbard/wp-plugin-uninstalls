-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('distm_settings', 'distm_default_icon_url', 'distm_featured_icon_url', 'distm_plugin_version', 'the-menu_license_key');
DELETE FROM wp_options WHERE option_name LIKE 'the-menu_license_status_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_icon', '_menu_item_icon_type', '_menu_item_dashicon', '_menu_item_visibility', '_menu_item_roles', '_menu_item_capabilities', '_menu_item_filter_by', 'distm_icon_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_icon', '_menu_item_icon_type', '_menu_item_dashicon', '_menu_item_visibility', '_menu_item_roles', '_menu_item_capabilities', '_menu_item_filter_by', 'distm_icon_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_icon', '_menu_item_icon_type', '_menu_item_dashicon', '_menu_item_visibility', '_menu_item_roles', '_menu_item_capabilities', '_menu_item_filter_by', 'distm_icon_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_icon', '_menu_item_icon_type', '_menu_item_dashicon', '_menu_item_visibility', '_menu_item_roles', '_menu_item_capabilities', '_menu_item_filter_by', 'distm_icon_url');

