-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_billing_field_salutation', 'woocommerce_enable_shipping_field_salutation', 'woocommerce_salutation_field_type', 'woocommerce_salutation_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_salutation';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_salutation';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_salutation';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_salutation';

