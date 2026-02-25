-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('invoicebox_order_id', 'invoicebox_parent_id', 'invoicebox_payment_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('invoicebox_order_id', 'invoicebox_parent_id', 'invoicebox_payment_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('invoicebox_order_id', 'invoicebox_parent_id', 'invoicebox_payment_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('invoicebox_order_id', 'invoicebox_parent_id', 'invoicebox_payment_link');

