-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbt_plugin_version', 'bbt_pinterest_db_version', 'account');

