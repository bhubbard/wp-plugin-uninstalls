-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feedtune_enabled_feeds', 'feedtune_feed_redirect', 'feedtune_redirect_http_code');

