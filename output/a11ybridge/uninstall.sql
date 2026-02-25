-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a11yb_install_id', 'a11ybridge_cloud_settings', 'a11ybridge_ai_settings', 'a11ybridge_simplification_settings', 'a11ybridge_pro_license_settings', 'a11yb_license_key_hash', 'a11ybridge_plugin_general_settings', 'a11yb_alttext_daily_last_id', 'a11ybridge_advanced_settings', 'a11ybridge_scanner_settings', 'a11yb_next_update_at_ts', 'a11yb_reset_date_ts', 'a11yb_monthly_limit', 'a11yb_ai_credits_remaining', 'a11yb_license_status', 'a11yb_license_expires_at_ts', 'a11ybridge_user_profile_settings', 'a11ybridge_user_privacy_settings', 'a11ybridge_user_storage_settings', 'a11ybridge_user_defaults_settings', 'a11ybridge_voice_settings', 'a11yb_license_domain', 'a11yb_plan_level', 'a11yb_monthly_used', 'a11yb_reset_date', 'a11yb_license_created_at', 'a11yb_license_expires_at', 'a11yb_license_environment', 'a11yb_usage_period', 'a11yb_license_state', 'a11yb_next_update_at', 'a11yb_license_created_at_ts', 'a11yb_license_updated_at_ts', 'a11ybridge_voice_config', 'a11ybridge_client_secret', 'a11ybridge_license_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

