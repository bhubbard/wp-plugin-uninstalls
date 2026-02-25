-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snapcall_uid', 'snapcall_api_key', 'snapcall_api_secret', 'snapcall_db_version');

