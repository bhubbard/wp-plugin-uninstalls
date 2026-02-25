-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('san_notifications', 'san_instances', 'woocommerce_bacs_accounts', 'wnt_connection');
DELETE FROM wp_options WHERE option_name LIKE 'san_wa_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_shipping', '_order_total', 'followup', 'followup_2', 'followup_3', '_completed_date', 'aftersales');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_shipping', '_order_total', 'followup', 'followup_2', 'followup_3', '_completed_date', 'aftersales');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_shipping', '_order_total', 'followup', 'followup_2', 'followup_3', '_completed_date', 'aftersales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_shipping', '_order_total', 'followup', 'followup_2', 'followup_3', '_completed_date', 'aftersales');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

