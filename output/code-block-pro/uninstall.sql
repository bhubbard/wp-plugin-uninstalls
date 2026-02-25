-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('code_block_pro_settings', 'code_block_pro_settings_2');

