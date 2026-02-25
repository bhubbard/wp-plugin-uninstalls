-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feecompass_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

