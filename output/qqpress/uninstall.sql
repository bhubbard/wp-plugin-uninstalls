-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qqpress_message', 'qqpress_db_version', 'qq_oauth_token', 'qq_oauth_token_secret');

