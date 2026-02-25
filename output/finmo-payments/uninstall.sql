-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_finmo_payments_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('finmo_checkout_id', '_finmo_is_refundable', '_finmo_is_partially_refundable', '_finmo_checkout_status', 'finmo_refund_id', '_finmo_refund_status', 'finmo_checkout_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('finmo_checkout_id', '_finmo_is_refundable', '_finmo_is_partially_refundable', '_finmo_checkout_status', 'finmo_refund_id', '_finmo_refund_status', 'finmo_checkout_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('finmo_checkout_id', '_finmo_is_refundable', '_finmo_is_partially_refundable', '_finmo_checkout_status', 'finmo_refund_id', '_finmo_refund_status', 'finmo_checkout_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('finmo_checkout_id', '_finmo_is_refundable', '_finmo_is_partially_refundable', '_finmo_checkout_status', 'finmo_refund_id', '_finmo_refund_status', 'finmo_checkout_url');

