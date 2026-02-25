-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_number', '_billing_neighborhood', 'appmax_order_id', 'appmax_tracking_code', 'appmax_pay_reference', 'appmax_link_billet', 'appmax_digitable_line', 'appmax_upsell_parent_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_number', '_billing_neighborhood', 'appmax_order_id', 'appmax_tracking_code', 'appmax_pay_reference', 'appmax_link_billet', 'appmax_digitable_line', 'appmax_upsell_parent_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_number', '_billing_neighborhood', 'appmax_order_id', 'appmax_tracking_code', 'appmax_pay_reference', 'appmax_link_billet', 'appmax_digitable_line', 'appmax_upsell_parent_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_number', '_billing_neighborhood', 'appmax_order_id', 'appmax_tracking_code', 'appmax_pay_reference', 'appmax_link_billet', 'appmax_digitable_line', 'appmax_upsell_parent_id');

