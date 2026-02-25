-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_mpaqt_eauth_value', 'woocommerce_mpaqt_remote_url', 'mpaqt_consumer_key', 'mpaqt_consumer_secret', 'mpaqt_api_key_generated', 'mpaqt_api_key_error');

