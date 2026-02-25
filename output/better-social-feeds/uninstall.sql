-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fftmj_client_id', 'fftmj_client_secret', 'fftmj_redirect_uri', 'fftmj_api_long_token', 'fftmj_api_long_token_generated', 'fftmj_api_long_token_expires');

