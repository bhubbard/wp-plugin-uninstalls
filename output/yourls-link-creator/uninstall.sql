-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yourls_api_test', 'yourls_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yourls_keyword', '_yourls_url', '_yourls_clicks', 'yourls_shorturl');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yourls_keyword', '_yourls_url', '_yourls_clicks', 'yourls_shorturl');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yourls_keyword', '_yourls_url', '_yourls_clicks', 'yourls_shorturl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yourls_keyword', '_yourls_url', '_yourls_clicks', 'yourls_shorturl');

