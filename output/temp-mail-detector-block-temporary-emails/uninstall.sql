-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmdetect_api_key', 'tmdetect_custom_blocklist', 'tmdetect_block_plus_emails', 'tmdetect_protect_comments');

