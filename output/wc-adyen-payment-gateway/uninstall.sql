-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('psawg_redirect_object', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'psawg_redirect_object_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_adyen_notifications', '_woocommerce_adyen_payment_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_adyen_notifications', '_woocommerce_adyen_payment_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_adyen_notifications', '_woocommerce_adyen_payment_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_adyen_notifications', '_woocommerce_adyen_payment_data');

