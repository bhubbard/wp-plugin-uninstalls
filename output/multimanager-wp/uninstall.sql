-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multi_manager_wp_activated', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('multi_manager_wp_login_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('multi_manager_wp_login_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('multi_manager_wp_login_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('multi_manager_wp_login_token');

