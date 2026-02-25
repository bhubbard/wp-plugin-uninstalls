-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmb_blocks_display_settings', 'wpmb_block_title', 'wpmb_block_content');

