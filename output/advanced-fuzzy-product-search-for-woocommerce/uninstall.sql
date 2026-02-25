-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%db_installed';
DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used';
DELETE FROM wp_options WHERE option_name LIKE '%_full_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '_overview_%';
DELETE FROM wp_options WHERE option_name LIKE '_subscribe_%';
DELETE FROM wp_options WHERE option_name LIKE '_rating_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_afsw_search_field_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_afsw_search_field_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_afsw_search_field_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_afsw_search_field_id');

