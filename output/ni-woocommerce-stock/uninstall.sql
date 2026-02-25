-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('niwoostock_setting', 'woocommerce_notify_low_stock_amount', 'woocommerce_notify_no_stock_amount');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ni_outofstock_notes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ni_outofstock_notes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ni_outofstock_notes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ni_outofstock_notes');

