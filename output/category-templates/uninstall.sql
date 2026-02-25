-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cat_temp_post', 'cat_temp_data', 'cat_arch_data');

