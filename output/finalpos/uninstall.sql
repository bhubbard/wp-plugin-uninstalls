-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('finalpos_current_stage', 'finalpos_jwt_token', 'finalpos_consumer_key', 'finalpos_consumer_secret', 'finalpos_last_nonce', 'finalpos_last_nonce_time', 'woocommerce_coming_soon', 'finalpos_setup_error');

