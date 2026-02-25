-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_umbrella_disallow_one_click_access', 'wp_health_allow_tracking', 'wp_umbrella_backup_version', 'wp_umbrella_backup_data_process', 'wphealth_version', 'wp_health_version_god_handler', 'wp_umbrella_number_trial_auto_install', 'wp_umbrella_login', 'wp_umbrella_backup_suffix_security', 'active_sitewide_plugins', 'wp_umbrella_backup_profile_data', 'wp_umbrella_backup_profile_database_data', 'vhp_varnish_ip', 'auto_core_update_failed', 'acf_pro_license', 'rg_gforms_key', 'gform_license_info', 'rank_math_connect_data', 'secupress_pro_consumer_key', 'secupress_pro_consumer_email', 'woocommerce_helper_data', 'wpforms_license', 'wp_rocket_settings', 'wpseo_premium_license_status', 'current_theme', 'update_themes', '_site_transient_update_core', 'wp-health', '_wp_umbrella_is_new_hash', 'wp_umbrella_white_label_data_cache', 'update_themes', 'secupress_pro_license_data', '_woocommerce_helper_subscriptions', 'yoast_premium_site_information', 'et_update_themes', 'wp_umbrella_snapshot_lock', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens');

