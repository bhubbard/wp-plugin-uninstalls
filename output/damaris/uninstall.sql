-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('url', 'login', 'password', 'my_plugin_db_version', 'hidden');

