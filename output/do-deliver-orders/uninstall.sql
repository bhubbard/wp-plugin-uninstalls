-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dodeor_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_do_deliver_order_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_do_deliver_order_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_do_deliver_order_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_do_deliver_order_status');

