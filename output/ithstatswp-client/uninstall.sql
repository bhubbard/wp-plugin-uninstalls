-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ith_auth_key', 'update_plugins', 'update_themes', 'update_core');

