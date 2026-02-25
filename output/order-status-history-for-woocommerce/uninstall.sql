-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oshwoo_wc_colors_update', 'oshwoo_multicurrency_symbol', 'oshwoo_hx_guest', 'oshwoo_hx_aggregate', 'oshwoo_hx_pending', 'oshwoo_hx_processing', 'oshwoo_hx_onhold', 'oshwoo_hx_completed', 'oshwoo_hx_cancelled', 'oshwoo_hx_refunded', 'oshwoo_hx_failed', 'oshwoo_hx_other', 'oshwoo_hx_text', 'oshwoo_hx_history', 'woocommerce_version');
DELETE FROM wp_options WHERE option_name LIKE 'oshwoo_%';
DELETE FROM wp_options WHERE option_name LIKE 'osh_orders_query__wp-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', 'oshwoo_aggregated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', 'oshwoo_aggregated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', 'oshwoo_aggregated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', 'oshwoo_aggregated');

