-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kotaqx_poster_version', 'kotaqx_poster_settings', 'kotaqx_poster_twitter_oauth_request_token', 'kotaqx_poster_twitter_oauth_request_token_secret');
DELETE FROM wp_options WHERE option_name LIKE '%_pro_active';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kotaqx_poster_ever_published');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kotaqx_poster_ever_published');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kotaqx_poster_ever_published');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kotaqx_poster_ever_published');

