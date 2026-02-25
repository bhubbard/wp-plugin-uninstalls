-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wctr_thanks_redirect_enable_template_redirect', 'pys_facebook', 'wctr_global', 'wctr_thanks_redirect_url', 'wctr_failed_redirect_url', 'wp_user_roles', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_thanks_redirect_custom_thankyou', 'wc_thanks_redirect_custom_failure', 'wc_thanks_redirect_url_priority', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_thanks_redirect_custom_thankyou', 'wc_thanks_redirect_custom_failure', 'wc_thanks_redirect_url_priority', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_thanks_redirect_custom_thankyou', 'wc_thanks_redirect_custom_failure', 'wc_thanks_redirect_url_priority', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_thanks_redirect_custom_thankyou', 'wc_thanks_redirect_custom_failure', 'wc_thanks_redirect_url_priority', '_price');

