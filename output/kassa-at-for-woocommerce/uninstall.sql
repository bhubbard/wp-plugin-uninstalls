-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kaw-subdomain', 'kaw-key', 'kaw-warehouse', 'kaw-message-active', 'kaw-synchronize-at-singleproduct', 'kaw-synchronize-at-cart', 'kaw-synchronize-on-order', 'kaw-logging-size', 'kaw-logging', 'woocommerce_manage_stock', 'logging-info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock', '_manage_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock', '_manage_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock', '_manage_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock', '_manage_stock');

