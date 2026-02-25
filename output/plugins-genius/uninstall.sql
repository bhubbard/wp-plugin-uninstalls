-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pg_plugin_genius_active', 'pg_my_genius_active_plugins', 'pg_old_active_plugins');

