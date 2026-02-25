-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('winston_api_token', 'winston_website_id', 'winston_is_premium', 'winston_cert_one', 'winston_cert_two', 'recently_activated', 'winston_ai_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

