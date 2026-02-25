-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wonderful_payments_gateway_settings', 'wonderful_payments_uuid');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wonderful_payment_id', 'wonderful_payment_ref', 'wonderful_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wonderful_payment_id', 'wonderful_payment_ref', 'wonderful_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wonderful_payment_id', 'wonderful_payment_ref', 'wonderful_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wonderful_payment_id', 'wonderful_payment_ref', 'wonderful_order_id');

