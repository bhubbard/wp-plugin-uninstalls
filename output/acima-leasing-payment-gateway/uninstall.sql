-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_acima_credit_settings', 'acima_api_access_token', 'acima_sdk_url_logged');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_acima_credit_lease_id', '_acima_credit_checkout_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_acima_credit_lease_id', '_acima_credit_checkout_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_acima_credit_lease_id', '_acima_credit_checkout_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_acima_credit_lease_id', '_acima_credit_checkout_token');

