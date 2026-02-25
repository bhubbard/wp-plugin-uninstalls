-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fm_filter', 'fm_comment_handling', 'fm_api_key', 'fm_api_send_mail', 'fm_api_block_score', 'fm_use_spamhaus', 'fm_use_uribl', 'fm_whitelist', 'fm_blacklist', 'fm_api_key_score', 'fm_db_version');

