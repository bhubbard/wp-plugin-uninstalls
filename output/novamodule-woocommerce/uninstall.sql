-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'extra_membership', 'extra_order_meta_keys', 'extra_customer_meta_keys');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nm_ns_pushed', 'first_name', 'last_name', 'last_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('nm_ns_pushed', 'first_name', 'last_name', 'last_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('nm_ns_pushed', 'first_name', 'last_name', 'last_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nm_ns_pushed', 'first_name', 'last_name', 'last_update');

