-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7rzp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7rzp_activate', '_cf7rzp_item_name', '_cf7rzp_item_price', '_cf7rzp_item_id', 'cf7rzp_order_id', 'item_price', 'cf7_id', 'gateway', 'mode', 'item_id', 'item_name', 'rzp_order_id', 'rzp_payment_id', 'failure_reason');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7rzp_activate', '_cf7rzp_item_name', '_cf7rzp_item_price', '_cf7rzp_item_id', 'cf7rzp_order_id', 'item_price', 'cf7_id', 'gateway', 'mode', 'item_id', 'item_name', 'rzp_order_id', 'rzp_payment_id', 'failure_reason');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7rzp_activate', '_cf7rzp_item_name', '_cf7rzp_item_price', '_cf7rzp_item_id', 'cf7rzp_order_id', 'item_price', 'cf7_id', 'gateway', 'mode', 'item_id', 'item_name', 'rzp_order_id', 'rzp_payment_id', 'failure_reason');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7rzp_activate', '_cf7rzp_item_name', '_cf7rzp_item_price', '_cf7rzp_item_id', 'cf7rzp_order_id', 'item_price', 'cf7_id', 'gateway', 'mode', 'item_id', 'item_name', 'rzp_order_id', 'rzp_payment_id', 'failure_reason');

