-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shorten_url_api_key', 'shorten_url_access_token', 'allow_shorten_url');

