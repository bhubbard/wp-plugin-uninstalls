-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ts_auth_options', 'ts_send_options', 'ts_show_credentials', 'ts_migration_done');

