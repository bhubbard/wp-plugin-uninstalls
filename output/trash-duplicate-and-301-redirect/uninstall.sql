-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_theme', 'tdrd_promo_time', 'tdrd_is_optin', 'trash_duplicates_options', 'tdrd_delete_data', 'tdr_version', 'admin_url', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'tdrd_deletepost_%';

