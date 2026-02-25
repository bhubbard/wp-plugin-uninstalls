-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('managead_block_count', 'managead_block_option', 'managead_block_counter');

