-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dismissed-buffalo_courier_disclaimer', 'buffalo_courier_dismissed_notice', 'woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('buffalo_order_id', 'buffalo_order_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('buffalo_order_id', 'buffalo_order_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('buffalo_order_id', 'buffalo_order_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('buffalo_order_id', 'buffalo_order_time');

