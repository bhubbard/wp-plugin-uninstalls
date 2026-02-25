-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woocommerce_subscription_epayco_settings', 'subscription_epayco_se_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('subscription_id', 'id_client');
DELETE FROM wp_usermeta WHERE meta_key IN ('subscription_id', 'id_client');
DELETE FROM wp_termmeta WHERE meta_key IN ('subscription_id', 'id_client');
DELETE FROM wp_commentmeta WHERE meta_key IN ('subscription_id', 'id_client');

