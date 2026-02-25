-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_mono_gateway_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ccy', '_payment_amount', '_payment_amount_final');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ccy', '_payment_amount', '_payment_amount_final');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ccy', '_payment_amount', '_payment_amount_final');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ccy', '_payment_amount', '_payment_amount_final');

