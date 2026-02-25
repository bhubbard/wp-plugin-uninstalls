-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wac_pro_version', 'wac_db_version', 'wac_uninstall', 'wac_cart_page', 'wac_checkout_page', 'wac_bulk_apply_future', 'wac_bulk_url_future', 'wac_coupon_email', 'wac_email_prompt', 'wac_email_err', 'wac_email_dismiss', 'wac_min_qty_ntf', 'wac_max_qty_ntf', 'wac_sc_cart', 'wac_dismiss_upgrade');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_qty_ntf', '_wc_auto_apply', 'customer_email', '_wc_url_apply', '_wc_prefix', '_wc_min_qty', '_wc_max_qty', '_wc_min_qty_ntf', '_wc_max_qty_ntf');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_qty_ntf', '_wc_auto_apply', 'customer_email', '_wc_url_apply', '_wc_prefix', '_wc_min_qty', '_wc_max_qty', '_wc_min_qty_ntf', '_wc_max_qty_ntf');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_qty_ntf', '_wc_auto_apply', 'customer_email', '_wc_url_apply', '_wc_prefix', '_wc_min_qty', '_wc_max_qty', '_wc_min_qty_ntf', '_wc_max_qty_ntf');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_qty_ntf', '_wc_auto_apply', 'customer_email', '_wc_url_apply', '_wc_prefix', '_wc_min_qty', '_wc_max_qty', '_wc_min_qty_ntf', '_wc_max_qty_ntf');

