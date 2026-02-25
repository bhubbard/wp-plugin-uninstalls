-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_easypay_pk_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('EASYPAY_IPN_LOG');
DELETE FROM wp_usermeta WHERE meta_key IN ('EASYPAY_IPN_LOG');
DELETE FROM wp_termmeta WHERE meta_key IN ('EASYPAY_IPN_LOG');
DELETE FROM wp_commentmeta WHERE meta_key IN ('EASYPAY_IPN_LOG');

