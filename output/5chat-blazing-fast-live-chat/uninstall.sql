-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fivechat_website_token');
DELETE FROM wp_options WHERE option_name LIKE 'fivechat_token_valid_%';

