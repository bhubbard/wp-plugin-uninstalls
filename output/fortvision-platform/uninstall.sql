-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fortvision_settings', 'fortvision_orders_export_need_to_send', 'cron', 'fortvision_customers_export_need_to_send', 'fortvision_product_export_need_to_send', 'fortvision_debug_mode_enabled', 'fortvision_debug_mode_enabled_requests', '_fortvision_form', 'fortvision_sync_options', 'fortvision_orders_export_sent', 'fortvision_customers_export_sent', 'fortvision_initialexport', 'fortvision_product_export_sent', 'fortvision_script_val', 'fortvision_sync_finished', 'fortvision_admin_notice', 'fortvision_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone', '_fortvisionAcceptMarketing');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone', '_fortvisionAcceptMarketing');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone', '_fortvisionAcceptMarketing');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone', '_fortvisionAcceptMarketing');

