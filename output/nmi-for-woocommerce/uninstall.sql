-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_currency', 'woocommerce_force_ssl_checkout', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('NMI Subscriber ID', 'billing_email', 'nmi_cc_token_id', 'NMI 3DS Response', 'NMI Transaction ID', 'AVS Response', 'CVV Response', 'NMI Response', 'nmi_check_token_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('NMI Subscriber ID', 'billing_email', 'nmi_cc_token_id', 'NMI 3DS Response', 'NMI Transaction ID', 'AVS Response', 'CVV Response', 'NMI Response', 'nmi_check_token_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('NMI Subscriber ID', 'billing_email', 'nmi_cc_token_id', 'NMI 3DS Response', 'NMI Transaction ID', 'AVS Response', 'CVV Response', 'NMI Response', 'nmi_check_token_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('NMI Subscriber ID', 'billing_email', 'nmi_cc_token_id', 'NMI 3DS Response', 'NMI Transaction ID', 'AVS Response', 'CVV Response', 'NMI Response', 'nmi_check_token_id');

