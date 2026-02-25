-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mbwebhooks-settings', 'mbwebhooks_db_version', 'mbwebhook_installing');

