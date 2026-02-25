-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbcs_activation_prevent_redirect', 'bbcs_setup_wizard_completed', 'bbcs_initial_version', 'bbcs_wizard_preset', 'bbcs_wizard_ux_mode', 'bbcs_wizard_captcha_mode', 'bbcs_wizard_init_mode', 'bbcs_wizard_cache_type', 'bbcs_setup_wizard_completed_at', 'botblocker_tools_core_settings', 'botblocker_tools_login_settings', 'botblocker_active_addons', 'bbcs_2fa_rules_version', 'bbcs_activation_redirect', 'bbcs_just_activated', 'bbcs_site_health_list', 'bbcs_site_health', 'bbcs_cloud_api_expired_alert', 'bbcs_cloud_api_hits_exhausted_alert', 'bbcs_cloud_api_status_transient', 'bbcs_cloud_connection_failed_alert', 'bbcs_missing_files_alert', 'bbcs_remaining_days', 'bbcs_remaining_hits');
DELETE FROM wp_options WHERE option_name LIKE 'bbcs_notice_cloud_api_%';
DELETE FROM wp_options WHERE option_name LIKE 'bbcs_notice_integrations_%';
DELETE FROM wp_options WHERE option_name LIKE 'bbcs_notice_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'bbcs_2fa_attempts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_2fa_secret_temp', '_2fa_backup_codes_temp', '_2fa_verified', '_2fa_secret', '_2fa_setup_pending', '_2fa_pending', '_2fa_backup_codes', '_2fa_redirect_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('_2fa_secret_temp', '_2fa_backup_codes_temp', '_2fa_verified', '_2fa_secret', '_2fa_setup_pending', '_2fa_pending', '_2fa_backup_codes', '_2fa_redirect_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('_2fa_secret_temp', '_2fa_backup_codes_temp', '_2fa_verified', '_2fa_secret', '_2fa_setup_pending', '_2fa_pending', '_2fa_backup_codes', '_2fa_redirect_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_2fa_secret_temp', '_2fa_backup_codes_temp', '_2fa_verified', '_2fa_secret', '_2fa_setup_pending', '_2fa_pending', '_2fa_backup_codes', '_2fa_redirect_to');

