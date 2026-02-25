-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('HTACCESS_IP_BLOCK_FILE_MAP_NAME', 'my_option_name');

