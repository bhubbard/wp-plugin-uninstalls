-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fts_ss_oauth_access_token', 'fts_ss_oauth_access_token_secret', 'fts_ss_consumer_key', 'fts_ss_consumer_secret');

