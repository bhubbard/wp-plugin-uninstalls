-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woopq_settings', 'woocommerce_notify_no_stock_amount', 'woocommerce_cart_redirect_after_add', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woopq_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woopq_quantity', '_woopq_rules', '_woopq_type', '_woopq_min', '_woopq_step', '_woopq_max', '_woopq_value', '_woopq_values');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woopq_quantity', '_woopq_rules', '_woopq_type', '_woopq_min', '_woopq_step', '_woopq_max', '_woopq_value', '_woopq_values');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woopq_quantity', '_woopq_rules', '_woopq_type', '_woopq_min', '_woopq_step', '_woopq_max', '_woopq_value', '_woopq_values');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woopq_quantity', '_woopq_rules', '_woopq_type', '_woopq_min', '_woopq_step', '_woopq_max', '_woopq_value', '_woopq_values');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woopq_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woopq_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woopq_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woopq_%';

