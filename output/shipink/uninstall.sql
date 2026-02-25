-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shipink_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shipink_connected', 'shipink_tracking_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('shipink_connected', 'shipink_tracking_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('shipink_connected', 'shipink_tracking_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shipink_connected', 'shipink_tracking_url');

