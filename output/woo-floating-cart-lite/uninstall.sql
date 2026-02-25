-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo-floating-cart-version', 'woofc', 'xt-woo-floating-cart-version', 'xt_woofc', 'xt_framework_system_info', 'xirki_telemetry_optin', 'xirki_telemetry_sent', 'xirki_telemetry_no_consent', 'xirki_font_local_filenames', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'xtfw_active_plugins', 'woocommerce_enable_ajax_add_to_cart', 'xt_framework_system_info_templates', 'xirki_googlefonts_cache', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_version_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xirki_fa_nag_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('xirki_fa_nag_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('xirki_fa_nag_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xirki_fa_nag_dismissed');

