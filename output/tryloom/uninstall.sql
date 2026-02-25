-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tryloom_try_on_method', 'tryloom_enabled', 'tryloom_platform_key', 'tryloom_allowed_categories', 'tryloom_button_placement', 'tryloom_theme_color', 'tryloom_primary_color', 'tryloom_retry_button', 'tryloom_custom_popup_css', 'tryloom_custom_button_css', 'tryloom_custom_account_css', 'tryloom_save_photos', 'tryloom_generation_limit', 'tryloom_time_period', 'tryloom_delete_photos_days', 'tryloom_allowed_user_roles', 'tryloom_enable_history', 'tryloom_enable_logging', 'tryloom_admin_user_roles', 'tryloom_show_popup_errors', 'tryloom_remove_data_on_delete', 'tryloom_subscription_ended', 'tryloom_free_trial_error', 'tryloom_usage_used', 'tryloom_usage_limit', 'tryloom_free_platform_key', 'tryloom_instance_id', 'tryloom_status_check_count', 'tryloom_brand_watermark', 'tryloom_version', 'tryloom_flush_rewrite_rules', 'tryloom_legacy_migrated', 'tryloom_dashboard_stats', 'wc_try_on_verification_lock');
DELETE FROM wp_options WHERE option_name LIKE 'tryloom_%';
DELETE FROM wp_options WHERE option_name LIKE 'tryloom_variations_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tryloom_image', 'tryloom_last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tryloom_image', 'tryloom_last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tryloom_image', 'tryloom_last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tryloom_image', 'tryloom_last_login');

