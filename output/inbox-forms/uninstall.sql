-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inbox_enabled', 'inbox_api_key', 'ib_db_ver', 'ib_plugin_activated', 'ib_install_date');

