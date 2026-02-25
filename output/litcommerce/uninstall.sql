-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_litcommerce_consumer_key', 'woocommerce_api_enabled', 'woocommerce_litcommerce_consumer_secret', '_wc_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_litc_order_id', '_litc_allow_send_email', '_litc_allow_send_email_owner');
DELETE FROM wp_usermeta WHERE meta_key IN ('_litc_order_id', '_litc_allow_send_email', '_litc_allow_send_email_owner');
DELETE FROM wp_termmeta WHERE meta_key IN ('_litc_order_id', '_litc_allow_send_email', '_litc_allow_send_email_owner');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_litc_order_id', '_litc_allow_send_email', '_litc_allow_send_email_owner');

