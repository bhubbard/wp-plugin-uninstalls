-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7pa_sys_settings', 'cf7pa_stripe_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'cf7pa_email_list', 'stripe_express_email_sender_from_email', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'cf7pa_stripe_configs', 'cf7pa_stripe_price_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cf7pa_checkout_redirect_setting');
DELETE FROM wp_usermeta WHERE meta_key IN ('cf7pa_checkout_redirect_setting');
DELETE FROM wp_termmeta WHERE meta_key IN ('cf7pa_checkout_redirect_setting');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cf7pa_checkout_redirect_setting');

