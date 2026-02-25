-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_wspa_checkout_form_settings', 'wspa_sys_settings', 'woocommerce_tax_display_cart', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'wc_stripe_processing_intent_%';
DELETE FROM wp_options WHERE option_name LIKE 'stripe_sources_%';
DELETE FROM wp_options WHERE option_name LIKE 'stripe_customer_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'first_name', 'last_name');

