-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_tracking_link', '_order_tracking_code', '_order_tracking_courier', '_order_tracking_code_sended');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_tracking_link', '_order_tracking_code', '_order_tracking_courier', '_order_tracking_code_sended');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_tracking_link', '_order_tracking_code', '_order_tracking_courier', '_order_tracking_code_sended');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_tracking_link', '_order_tracking_code', '_order_tracking_courier', '_order_tracking_code_sended');

