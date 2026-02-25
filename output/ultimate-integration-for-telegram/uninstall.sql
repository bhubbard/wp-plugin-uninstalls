-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_placeholder_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_mobile', '_currency_conversion_rate', '_order_total_converted');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_mobile', '_currency_conversion_rate', '_order_total_converted');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_mobile', '_currency_conversion_rate', '_order_total_converted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_mobile', '_currency_conversion_rate', '_order_total_converted');

