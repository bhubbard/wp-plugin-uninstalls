-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_stripe_pix_settings', 'woocommerce_stripe_pix_secret_key_sandbox', 'woocommerce_stripe_pix_secret_key_production');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_cpf');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_cpf');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_cpf');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_cpf');

