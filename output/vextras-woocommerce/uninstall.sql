-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vextras_woocommerce_version', 'vextras_woocommerce_plugin_do_activation_redirect', 'vextras-woocommerce', 'woocommerce_default_catalog_orderby');
DELETE FROM wp_options WHERE option_name LIKE 'vextras-woocommerce-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vextras_woocommerce_is_subscribed', 'vextras_woocommerce_tracking_numbers');
DELETE FROM wp_usermeta WHERE meta_key IN ('vextras_woocommerce_is_subscribed', 'vextras_woocommerce_tracking_numbers');
DELETE FROM wp_termmeta WHERE meta_key IN ('vextras_woocommerce_is_subscribed', 'vextras_woocommerce_tracking_numbers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vextras_woocommerce_is_subscribed', 'vextras_woocommerce_tracking_numbers');

