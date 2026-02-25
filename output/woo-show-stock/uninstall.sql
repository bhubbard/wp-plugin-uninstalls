-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_always_show_stock', 'wc_show_stock_where', 'bpwcss_installed', 'bvsclose', 'bpwss-review-dismiss', 'woostock_show_detailed_admin', 'bpwss-later-dismiss');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woostock_display_type', '_manage_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woostock_display_type', '_manage_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woostock_display_type', '_manage_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woostock_display_type', '_manage_stock');

