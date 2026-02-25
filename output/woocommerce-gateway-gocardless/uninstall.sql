-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_gocardless_settings', 'wc_gocardless_access_token_unauthorized', 'wc_gocardless_default_webhook_secret', 'woocommerce_gocardless_default_webhook_secret', 'wc_gocardless_version', 'woocommerce_gocardless_version', 'woocommerce_gocardless_settings_deprecated', 'wc_gocardless_available_scheme_identifiers', 'wc_gocardless_connection_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gocardless_customer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gocardless_customer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gocardless_customer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gocardless_customer_id');

