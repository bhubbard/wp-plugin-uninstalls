-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_block_bfx_pay_gateway_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bitfinex_invoice_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('bitfinex_invoice_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('bitfinex_invoice_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bitfinex_invoice_id');

