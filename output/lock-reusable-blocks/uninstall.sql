-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_convert_reusable_block_button', 'hide_edit_reusable_block_button');

