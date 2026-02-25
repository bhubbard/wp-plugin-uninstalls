-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfp_where_hear_about_us', 'wpfp_data_submited_in_sendiblue', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wpfp_version', 'md_woocommerce_shipping_method_format', 'woocommerce_recommoded_product_record', '_welcome_screen_activation_redirect_wpfp', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'prd_att_qry%';

