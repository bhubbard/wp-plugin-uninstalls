-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptp_consumer_key', 'wptp_consumer_secret', 'wptp_oauth_token', 'wptp_oauth_token_secret', 'wptp_screen_name', 'wptw_oauth_verifier', 'wptw_oauth_token', 'wptw_oauth_token_secret');

