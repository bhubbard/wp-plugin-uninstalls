-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%api_key';
DELETE FROM wp_options WHERE option_name LIKE '%comment_campaign';
DELETE FROM wp_options WHERE option_name LIKE '%comment_label';

