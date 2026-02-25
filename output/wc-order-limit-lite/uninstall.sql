-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_order_limit_do_activation_redirect', 'wcol_options', 'wcol_rule_type_error', 'wcol_rule_select_items', 'woocommerce_custom_orders_table_enabled');
DELETE FROM wp_options WHERE option_name LIKE 'xswcol_order_time_update_%';
DELETE FROM wp_options WHERE option_name LIKE 'xswcol_recent_order_time_%';
DELETE FROM wp_options WHERE option_name LIKE 'xswcol_order_time_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcol-post-rules', 'wcol-rule-type', '_wcol_rule_limit', 'wcol_min_limit', 'wcol_max_limit', '_customer_ip_address', 'wcol_order_created', 'xswcol_order_time_update', 'xswcol_recent_order_time', 'xswcol_order_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcol-post-rules', 'wcol-rule-type', '_wcol_rule_limit', 'wcol_min_limit', 'wcol_max_limit', '_customer_ip_address', 'wcol_order_created', 'xswcol_order_time_update', 'xswcol_recent_order_time', 'xswcol_order_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcol-post-rules', 'wcol-rule-type', '_wcol_rule_limit', 'wcol_min_limit', 'wcol_max_limit', '_customer_ip_address', 'wcol_order_created', 'xswcol_order_time_update', 'xswcol_recent_order_time', 'xswcol_order_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcol-post-rules', 'wcol-rule-type', '_wcol_rule_limit', 'wcol_min_limit', 'wcol_max_limit', '_customer_ip_address', 'wcol_order_created', 'xswcol_order_time_update', 'xswcol_recent_order_time', 'xswcol_order_time');

