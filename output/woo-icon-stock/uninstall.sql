-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tx_rupture', 'tx_faible', 'tx_ok', 'qt_faible', 'icon_woo_stock_1', 'woocommerce_stock_format', 'woo-icon-stock-custom', 'upload_icon_stock', 'upload_icon_stock_faible', 'upload_icon_stock_ok');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_icon_enabled', 'woo_icon_stock_seuil');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_icon_enabled', 'woo_icon_stock_seuil');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_icon_enabled', 'woo_icon_stock_seuil');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_icon_enabled', 'woo_icon_stock_seuil');

