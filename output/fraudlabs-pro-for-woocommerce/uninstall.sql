-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_woocommerce-fraudlabs-pro_flp_advanced_velocity', 'woocommerce_downloads_grant_access_after_payment', 'wc_settings_woocommerce-fraudlabs-pro_reject_failed_order', 'wc_settings_woocommerce-fraudlabs-pro_debug_log_path', 'wc_settings_woocommerce-fraudlabs-pro_expand_report', 'wc_settings_woocommerce-fraudlabs-pro_change_status_auto', 'wc_settings_woocommerce-fraudlabs-pro_enabled', 'wc_settings_woocommerce-fraudlabs-pro_api_key', 'wc_settings_woocommerce-fraudlabs-pro_debug_log', 'wc_settings_woocommerce-fraudlabs-pro_approve_status', 'wc_settings_woocommerce-fraudlabs-pro_review_status', 'wc_settings_woocommerce-fraudlabs-pro_reject_status');
DELETE FROM wp_options WHERE option_name LIKE 'wc_settings_woocommerce-fraudlabs-pro_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fraudlabspro_ip_before', '_fraudlabspro', '_flp_bin_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fraudlabspro_ip_before', '_fraudlabspro', '_flp_bin_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fraudlabspro_ip_before', '_fraudlabspro', '_flp_bin_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fraudlabspro_ip_before', '_fraudlabspro', '_flp_bin_no');

