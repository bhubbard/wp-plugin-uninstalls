-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formstack_forms', 'formstack_access_token', 'formstack_refresh_token', 'formstack_token_expiration', 'formstack_form_count', 'formstack_settings', 'formstack_client_id', 'formstack_client_secret', 'formstack_oauth2_code');

