-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('latepoint_wizard_visited', 'latepoint_redirect_to_wizard', 'latepoint_show_version_5_modal', 'latepoint_db_version', 'latepoint_page_customer-cabinet', 'latepoint_db_seeded');
DELETE FROM wp_options WHERE option_name LIKE 'latepoint_blocks_styles_%';
DELETE FROM wp_options WHERE option_name LIKE '%_addon_db_version';
DELETE FROM wp_options WHERE option_name LIKE 'csv_import_file_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('latepoint_admin_menu_style', 'latepoint_custom_capabilities', 'latepoint_custom_allowed_records');
DELETE FROM wp_usermeta WHERE meta_key IN ('latepoint_admin_menu_style', 'latepoint_custom_capabilities', 'latepoint_custom_allowed_records');
DELETE FROM wp_termmeta WHERE meta_key IN ('latepoint_admin_menu_style', 'latepoint_custom_capabilities', 'latepoint_custom_allowed_records');
DELETE FROM wp_commentmeta WHERE meta_key IN ('latepoint_admin_menu_style', 'latepoint_custom_capabilities', 'latepoint_custom_allowed_records');

