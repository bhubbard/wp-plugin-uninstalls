-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_notify_low_stock', 'woocommerce_stock_email_recipient', 'woocommerce_notify_no_stock', 'woocommerce_notify_no_stock_amount');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smifw_location_stocks', '_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('smifw_location_stocks', '_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('smifw_location_stocks', '_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smifw_location_stocks', '_stock');

