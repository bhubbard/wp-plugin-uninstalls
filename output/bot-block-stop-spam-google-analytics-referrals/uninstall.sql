-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bot_block', 'bot_block_master_table', 'bot_block_log');

