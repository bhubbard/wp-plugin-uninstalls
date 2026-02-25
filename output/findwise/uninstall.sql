-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('findwise_redirect_to_finish_setup', 'findwise_pairing_token', 'findwise_pairing_callback_token', 'findwise_secret_key');

