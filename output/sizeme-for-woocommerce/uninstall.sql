-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sizeme_version', 'service_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('delivery_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('delivery_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('delivery_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('delivery_order_id');

