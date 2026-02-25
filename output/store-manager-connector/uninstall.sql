-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SMCONNECTOR_OPTIONS');

-- Drop Custom Tables
DROP TABLE IF EXISTS wp_smconnector_session_keys;
DROP TABLE IF EXISTS wp_smconnector_failed_login;

