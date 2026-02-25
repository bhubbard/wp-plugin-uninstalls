-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout', 'woocommerce_tax_total_display', 'woocommerce_woo-2checkout_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_2checkout_previous_order', '_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_2checkout_previous_order', '_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_2checkout_previous_order', '_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_2checkout_previous_order', '_transaction_id');

