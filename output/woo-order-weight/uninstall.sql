-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'orderweight_enable_order_notes', 'orderweight_enable_admin_emails', 'orderweight_enable_customer_emails', 'orderweight_customer_dashboard', 'order_weight_update_process');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('order_weight', 'order_weight_unit', '_order_weight');
DELETE FROM wp_usermeta WHERE meta_key IN ('order_weight', 'order_weight_unit', '_order_weight');
DELETE FROM wp_termmeta WHERE meta_key IN ('order_weight', 'order_weight_unit', '_order_weight');
DELETE FROM wp_commentmeta WHERE meta_key IN ('order_weight', 'order_weight_unit', '_order_weight');

