-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phpmydirectory_table_prefix', 'phpmydirectory_folder');

