-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'posten-bring-checkout-dark-mode', 'woocommerce_vipps_settings', 'woocommerce_weight_unit', 'posten-bring-checkout-deactivation-reason', 'posten-bring-checkout-deactivation-feedback', 'posten-bring-checkout-remote-log', 'wooexpress_navigation_enabled', 'posten-bring-checkout-apikey', 'posten-bring-checkout-webshopId', 'woocommerce_store_address_2', 'woocommerce_address_autocomplete_enabled', 'woocommerce_specific_allowed_countries', 'woocommerce_dintero_checkout_settings', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_posten_bring_checkout_too_large_for_parcel_locker', '_posten_bring_checkout_too_large_for_mailbox', '_posten_bring_checkout_disable_all', 'posten_bring_checkout_dismissed_notifications');
DELETE FROM wp_usermeta WHERE meta_key IN ('_posten_bring_checkout_too_large_for_parcel_locker', '_posten_bring_checkout_too_large_for_mailbox', '_posten_bring_checkout_disable_all', 'posten_bring_checkout_dismissed_notifications');
DELETE FROM wp_termmeta WHERE meta_key IN ('_posten_bring_checkout_too_large_for_parcel_locker', '_posten_bring_checkout_too_large_for_mailbox', '_posten_bring_checkout_disable_all', 'posten_bring_checkout_dismissed_notifications');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_posten_bring_checkout_too_large_for_parcel_locker', '_posten_bring_checkout_too_large_for_mailbox', '_posten_bring_checkout_disable_all', 'posten_bring_checkout_dismissed_notifications');

