-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'subscription_payu_latam_spl_redirect', 'subscription_payu_latam_spl_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('subscription_payu_latam_id', 'subscription_payu_latam_id_client', '_billing_dni');
DELETE FROM wp_usermeta WHERE meta_key IN ('subscription_payu_latam_id', 'subscription_payu_latam_id_client', '_billing_dni');
DELETE FROM wp_termmeta WHERE meta_key IN ('subscription_payu_latam_id', 'subscription_payu_latam_id_client', '_billing_dni');
DELETE FROM wp_commentmeta WHERE meta_key IN ('subscription_payu_latam_id', 'subscription_payu_latam_id_client', '_billing_dni');

