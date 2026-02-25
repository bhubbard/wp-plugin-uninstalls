-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hkdigital_fastshift_version_option', 'woocommerce_payment-gateway-for-fastshift_settings', 'hkdigital_language_payment_fastshift', 'language_payment_fastshift', 'hkdigital_payment-gateway-for-fastshift_verification_id', 'hkdigtial_check_activation_fastshift', 'hkdigital_dump', 'woocommerce_checkout_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('OrderGuid');
DELETE FROM wp_usermeta WHERE meta_key IN ('OrderGuid');
DELETE FROM wp_termmeta WHERE meta_key IN ('OrderGuid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('OrderGuid');

