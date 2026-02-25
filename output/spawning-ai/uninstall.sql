-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spawning_block_ccbot', 'spawning_block_gptbot', 'block_ccbot', 'block_gptbot');

