-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsf_usage_last_displayed_time', 'bsf_usage_migrated', 'bsf_analytics_last_displayed_time', 'hfe_compatibility_option', 'uae_usage_optin', 'uae_widgets_usage_data_option', 'hfe_kpi_daily_snapshots', 'uae_lite_is_activated', 'hfe_start_onboarding', 'hfe_is_theme_supported', 'hfe_plugin_is_activated', 'hfe_onboarding_triggered', 'hfe_plugin_version', 'hfe_plugin_previous_version', '_hfe_widgets', 'bsf_usage_optin', 'bsf_usage_installed_time', 'uaelite_subscription', 'elementor_active_kit', 'siteURL', 'hfe_guide_email', 'hfe_guide_fname', 'allowed_astra_notices', 'bsf_analytics_track', 'bsf_usage_track', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time';
DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time';
DELETE FROM wp_options WHERE option_name LIKE 'hfe_duplicated_post_%';
DELETE FROM wp_options WHERE option_name LIKE 'hfe_rollback_versions_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hfe_permalink_notice_option', 'hfe-popup', 'hfe-subscribed', 'hfe_upgrade_notice_dismissed', 'ehf_target_include_locations', 'ehf_target_exclude_locations', 'ehf_target_user_roles', 'ehf_template_type', 'display-on-canvas-template', 'unsupported-theme', '_elementor_data', '_elementor_edit_mode', '_wp_page_template', 'uae_learn', 'hfe_learn_progress', '_elementor_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('hfe_permalink_notice_option', 'hfe-popup', 'hfe-subscribed', 'hfe_upgrade_notice_dismissed', 'ehf_target_include_locations', 'ehf_target_exclude_locations', 'ehf_target_user_roles', 'ehf_template_type', 'display-on-canvas-template', 'unsupported-theme', '_elementor_data', '_elementor_edit_mode', '_wp_page_template', 'uae_learn', 'hfe_learn_progress', '_elementor_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('hfe_permalink_notice_option', 'hfe-popup', 'hfe-subscribed', 'hfe_upgrade_notice_dismissed', 'ehf_target_include_locations', 'ehf_target_exclude_locations', 'ehf_target_user_roles', 'ehf_template_type', 'display-on-canvas-template', 'unsupported-theme', '_elementor_data', '_elementor_edit_mode', '_wp_page_template', 'uae_learn', 'hfe_learn_progress', '_elementor_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hfe_permalink_notice_option', 'hfe-popup', 'hfe-subscribed', 'hfe_upgrade_notice_dismissed', 'ehf_target_include_locations', 'ehf_target_exclude_locations', 'ehf_target_user_roles', 'ehf_template_type', 'display-on-canvas-template', 'unsupported-theme', '_elementor_data', '_elementor_edit_mode', '_wp_page_template', 'uae_learn', 'hfe_learn_progress', '_elementor_css');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-location';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-exclusion';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-users';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-users';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-users';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-users';

