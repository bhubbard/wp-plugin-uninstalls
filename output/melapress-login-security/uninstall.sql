-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_mls_premium', 'melapress_login_security_freemius_state', 'mls_migration_status', 'mls_200_migration_complete', 'mls_migration_required', 'ppm_migration_required', 'ppmwp_setting', 'ppmwp_options', 'mls_migration_started', 'mls_setting', 'fs_mls_premium');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_activation';
DELETE FROM wp_options WHERE option_name LIKE '%_reset_timestamp';
DELETE FROM wp_options WHERE option_name LIKE '%_inactive_users';
DELETE FROM wp_options WHERE option_name LIKE '%_update_notice_needed';
DELETE FROM wp_options WHERE option_name LIKE '%_setting';
DELETE FROM wp_options WHERE option_name LIKE '%_redirect_to_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mls_temp_user', 'dismissed_wp_pointers', 'mls_reset_pw_on_login', 'mls_login_ips', 'mls_temp_user_expires_on', 'mls_login_count', 'mls_temp_user_expires_on_date', 'mls_temp_user_expired', 'mls_temp_user_max_login_limit', 'mls_last_login', 'mls_temp_user_created_on', 'mls_temp_user_skip_2fa', 'mls_temp_user_redirect_to', 'locale', 'mls_temp_user_token', 'wp_2fa_enforcement_state', 'show_welcome_panel', 'mls_temp_user_updated');
DELETE FROM wp_usermeta WHERE meta_key IN ('mls_temp_user', 'dismissed_wp_pointers', 'mls_reset_pw_on_login', 'mls_login_ips', 'mls_temp_user_expires_on', 'mls_login_count', 'mls_temp_user_expires_on_date', 'mls_temp_user_expired', 'mls_temp_user_max_login_limit', 'mls_last_login', 'mls_temp_user_created_on', 'mls_temp_user_skip_2fa', 'mls_temp_user_redirect_to', 'locale', 'mls_temp_user_token', 'wp_2fa_enforcement_state', 'show_welcome_panel', 'mls_temp_user_updated');
DELETE FROM wp_termmeta WHERE meta_key IN ('mls_temp_user', 'dismissed_wp_pointers', 'mls_reset_pw_on_login', 'mls_login_ips', 'mls_temp_user_expires_on', 'mls_login_count', 'mls_temp_user_expires_on_date', 'mls_temp_user_expired', 'mls_temp_user_max_login_limit', 'mls_last_login', 'mls_temp_user_created_on', 'mls_temp_user_skip_2fa', 'mls_temp_user_redirect_to', 'locale', 'mls_temp_user_token', 'wp_2fa_enforcement_state', 'show_welcome_panel', 'mls_temp_user_updated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mls_temp_user', 'dismissed_wp_pointers', 'mls_reset_pw_on_login', 'mls_login_ips', 'mls_temp_user_expires_on', 'mls_login_count', 'mls_temp_user_expires_on_date', 'mls_temp_user_expired', 'mls_temp_user_max_login_limit', 'mls_last_login', 'mls_temp_user_created_on', 'mls_temp_user_skip_2fa', 'mls_temp_user_redirect_to', 'locale', 'mls_temp_user_token', 'wp_2fa_enforcement_state', 'show_welcome_panel', 'mls_temp_user_updated');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_recently_unlocked_reason';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_recently_unlocked_reason';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_recently_unlocked_reason';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_recently_unlocked_reason';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user_has_manually_reset';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user_has_manually_reset';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user_has_manually_reset';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user_has_manually_reset';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_inactive_set_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_inactive_set_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_inactive_set_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_inactive_set_time';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_recently_unlocked_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_recently_unlocked_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_recently_unlocked_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_recently_unlocked_time';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_recently_unlocked';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_recently_unlocked';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_recently_unlocked';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_recently_unlocked';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_pw_expires_soon_notice_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_pw_expires_soon_notice_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_pw_expires_soon_notice_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_pw_expires_soon_notice_dismissed';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_pw_expires_soon';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_pw_expires_soon';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_pw_expires_soon';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_pw_expires_soon';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_activity';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_activity';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_activity';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_activity';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_blocked_since';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_blocked_since';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_blocked_since';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_blocked_since';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_security_prompt_responses';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_security_prompt_responses';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_security_prompt_responses';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_security_prompt_responses';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%is_blocked_user';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%is_blocked_user';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%is_blocked_user';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%is_blocked_user';

