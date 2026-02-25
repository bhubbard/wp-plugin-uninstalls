-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('copyblocker_pro_disable_selection', 'copyblocker_pro_block_copy', 'copyblocker_pro_block_select_all', 'copyblocker_pro_block_dev_tools', 'copyblocker_pro_block_context_menu', 'copyblocker_pro_block_screen_capture', 'copyblocker_pro_block_print', 'copyblocker_pro_block_image_download');

