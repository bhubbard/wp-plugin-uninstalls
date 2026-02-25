-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmusage_supported_php_versions', 'pmusage_latest_wp_version', 'pmusage_latest_php_version', 'pmusage_mysql_eol_data');

