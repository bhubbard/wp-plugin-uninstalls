-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hubon_hubon_display_name');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pickup_date', 'status', 'order_id', 'response', 'payload', 'billing_first_name', 'billing_last_name', 'billing_phone', '_hubon_transport_order_created');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pickup_date', 'status', 'order_id', 'response', 'payload', 'billing_first_name', 'billing_last_name', 'billing_phone', '_hubon_transport_order_created');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pickup_date', 'status', 'order_id', 'response', 'payload', 'billing_first_name', 'billing_last_name', 'billing_phone', '_hubon_transport_order_created');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pickup_date', 'status', 'order_id', 'response', 'payload', 'billing_first_name', 'billing_last_name', 'billing_phone', '_hubon_transport_order_created');

