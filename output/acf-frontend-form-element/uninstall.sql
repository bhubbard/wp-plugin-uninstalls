-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frontend_admin_dashboard_slug', 'frontend_admin_save_submissions', 'frontend_admin_google_recaptcha_site', 'frontend_admin_google_recaptcha_secret', 'frontend_admin_google_maps_api', 'frontend_admin_hide_by', 'frontend_admin_login_redirect', 'frontend_admin_roles', 'frontend_admin_version', 'fea_legacy_elementor', 'local_avatar', 'filter_media_author', 'acff_stripe_active', 'acff_stripe_live_mode', 'acff_stripe_live_secret_key', 'acff_stripe_test_secret_key', 'acff_paypal_active', 'acff_paypal_client_id', 'acff_paypal_secret', 'acff_paypal_live_mode', 'frontend_admin_submissions_all_time', 'frontend_admin_hide_wp_dashboard', 'fea_csv_export', 'active_sitewide_plugins', 'acf_first_activated_version', 'acf_version', 'acf_escaped_html_notice_dismissed', 'cptui_post_types', 'cptui_taxonomies', 'acf_escaped_html_log', 'acf_will_escape_html_log', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'frontend_admin_recaptcha_site_v2', 'frontend_admin_recaptcha_secret_v2', 'frontend_admin_recaptcha_site_v3', 'frontend_admin_recaptcha_secret_v3', 'fea_flush_permalinks', 'fea_main_license_valid', 'fea_pro_trial_dismiss', 'fea_min_submits_trigger', 'acf_deactivated_notice_id', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'frontend_admin_recaptcha_site_%';
DELETE FROM wp_options WHERE option_name LIKE 'options_%';
DELETE FROM wp_options WHERE option_name LIKE 'acf_network_upgrade_needed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('frontend_admin_email_verified', 'admin_form_type', 'form_key', 'hide_admin_area', 'acff_payed_submitted', 'acff_payed_post', 'fea_limit_visibilty', 'fea_show_for', 'fea_show_for_roles', 'fea_redirect_to', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'description', 'first_name', 'last_name', '_thumbnail_id', 'nickname', 'admin_form_edited', 'frontend_admin_manager', 'show_admin_bar_front', 'admin_form_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('frontend_admin_email_verified', 'admin_form_type', 'form_key', 'hide_admin_area', 'acff_payed_submitted', 'acff_payed_post', 'fea_limit_visibilty', 'fea_show_for', 'fea_show_for_roles', 'fea_redirect_to', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'description', 'first_name', 'last_name', '_thumbnail_id', 'nickname', 'admin_form_edited', 'frontend_admin_manager', 'show_admin_bar_front', 'admin_form_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('frontend_admin_email_verified', 'admin_form_type', 'form_key', 'hide_admin_area', 'acff_payed_submitted', 'acff_payed_post', 'fea_limit_visibilty', 'fea_show_for', 'fea_show_for_roles', 'fea_redirect_to', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'description', 'first_name', 'last_name', '_thumbnail_id', 'nickname', 'admin_form_edited', 'frontend_admin_manager', 'show_admin_bar_front', 'admin_form_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('frontend_admin_email_verified', 'admin_form_type', 'form_key', 'hide_admin_area', 'acff_payed_submitted', 'acff_payed_post', 'fea_limit_visibilty', 'fea_show_for', 'fea_show_for_roles', 'fea_redirect_to', 'acf_user_settings', '_wp_attachment_image_alt', '_wp_page_template', '_acf_changed', 'rule', 'allorany', 'position', 'layout', 'hide_on_screen', 'description', 'first_name', 'last_name', '_thumbnail_id', 'nickname', 'admin_form_edited', 'frontend_admin_manager', 'show_admin_bar_front', 'admin_form_source');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%acff_payed_submitted';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%acff_payed_submitted';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%acff_payed_submitted';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%acff_payed_submitted';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fea_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fea_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fea_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fea_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'submitted::%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'submitted::%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'submitted::%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'submitted::%';

