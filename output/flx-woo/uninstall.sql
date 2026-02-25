-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flx_woo_version', 'flx_woo_settings', 'flx_woo_last_render_time', 'flx_woo_allow_bypass', 'flx_woo_render_stats_24h', 'woocommerce_currency_pos', 'woocommerce_notify_low_stock_amount', 'woocommerce_min_amount', 'flx_woo_renderer_version', 'flx_woo_db_tables_verified');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

