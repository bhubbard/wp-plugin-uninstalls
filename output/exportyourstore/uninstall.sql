-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eys_woocommerce_api_consumer_key', 'eys_woocommerce_api_consumer_secret', 'eys_exportyourstore_returned_user_id');

