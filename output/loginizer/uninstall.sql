-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loginizer_provider_settings', 'loginizer_social_order', 'loginizer_version', 'loginizer_options', 'loginizer_last_reset', 'loginizer_whitelist', 'loginizer_blacklist', 'loginizer_2fa_whitelist', 'loginizer_softwp_upgrade', 'lz_version', 'loginizer_social_settings', 'loginizer_captcha', 'loginizer_ip_method', 'loginizer_custom_ip_method', 'loginizer_login_mail', 'loginizer_ins_time', 'loginizer_disable_brute', 'site_name', 'loginizer_login_attempt_stats', 'loginizer_msg', 'loginizer_2fa_msg', 'loginizer_2fa_email_template', 'loginizer_security', 'loginizer_wp_admin', 'loginizer_csrf_promo_time', 'loginizer_backuply_promo_time', 'loginizer_promo_time', 'loginizer_checksums_last_run', 'loginizer_checksums_diff', 'loginizer_2fa_custom_redirect', 'external_updates-loginizer-security', 'loginizer_pro_version', 'softaculous_plugin_update_notice', 'loginizer_license_notice', 'loginizer_license', 'loginizer_dismiss_newsletter', 'loginizer_social_login_url', 'loginizer_2fa', 'loginizer_checksums_ignore', 'loginizer_checksums', 'loginizer_no_announcement', 'loginizer_epl', 'site_admins', 'loginizer_username_blacklist', 'loginizer_domains_blacklist', 'loginizer_csrf_protection', 'loginizer_limit_session', 'loginizer_sso_links', 'update_plugins', 'loginizer_csrf_mod_rewrite');
DELETE FROM wp_options WHERE option_name LIKE 'loginizer_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('loginizer_user_settings', 'loginizer_avatar_download', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('loginizer_user_settings', 'loginizer_avatar_download', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('loginizer_user_settings', 'loginizer_avatar_download', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('loginizer_user_settings', 'loginizer_avatar_download', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'loginizer_sso_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'loginizer_sso_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'loginizer_sso_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'loginizer_sso_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expires';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attempts';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attempts';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attempts';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attempts';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%lz_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%lz_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%lz_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%lz_avatar';

