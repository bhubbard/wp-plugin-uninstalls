-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abt_locale', 'abt_sc', 'abt_status', 'abt_db_version');

