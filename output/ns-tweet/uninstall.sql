-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oauth_consumer_key', 'consumer_secret', 'oauth_access_token', 'oauth_access_token_secret');

