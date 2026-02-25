-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iowd_activation_redirect', 'iowd_onboarding_step', 'tenweb_manager_installed', 'tenwebio_was_connected', 'first_critical_generation_flag', 'two_flow_status', 'two_triggerPostOptimizationTasks', 'incompatible_plugins_active_send', 'flow_score_check_init', 'two_flow_score_log', 'two_clear_cache_from', 'iowd_speed_score', 'iowd_homepage_optimized', 'tenweb_domain_id', 'site_name', 'tenweb_ai_assistant_domain_id', 'two-front-page-speed', 'image_optimizer_auth_error_logs', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_saved_nonce';
DELETE FROM wp_options WHERE option_name LIKE '%_domain_id';
DELETE FROM wp_options WHERE option_name LIKE '%_from_image_optimizer';
DELETE FROM wp_options WHERE option_name LIKE '%_client_referral_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_is_available';
DELETE FROM wp_options WHERE option_name LIKE '%_requests_block';
DELETE FROM wp_options WHERE option_name LIKE '%_plugins_state_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_themes_state_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_addons_state_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_site_state_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_connected_from';
DELETE FROM wp_options WHERE option_name LIKE '%_plugins_list';
DELETE FROM wp_options WHERE option_name LIKE '%_themes_list';
DELETE FROM wp_options WHERE option_name LIKE '%_addons_list';
DELETE FROM wp_options WHERE option_name LIKE '%_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%_refresh_token';
DELETE FROM wp_options WHERE option_name LIKE '%_ai_assistant_domain_id';
DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id';
DELETE FROM wp_options WHERE option_name LIKE '%_user_timezone_offset';
DELETE FROM wp_options WHERE option_name LIKE '%_user_info';
DELETE FROM wp_options WHERE option_name LIKE '%_flow_id';
DELETE FROM wp_options WHERE option_name LIKE '%_notification_id';
DELETE FROM wp_options WHERE option_name LIKE '%_ai_assistant_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%_ai_assistant_refresh_token';
DELETE FROM wp_options WHERE option_name LIKE '%_confirm_token';
DELETE FROM wp_options WHERE option_name LIKE '%_configs';
DELETE FROM wp_options WHERE option_name LIKE '%_last_compress_data';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_stat';
DELETE FROM wp_options WHERE option_name LIKE '%_webp_converted';
DELETE FROM wp_options WHERE option_name LIKE '%_running_compress_bulk';
DELETE FROM wp_options WHERE option_name LIKE '%_auth_error_logs';
DELETE FROM wp_options WHERE option_name LIKE '%_client_products_transient';
DELETE FROM wp_options WHERE option_name LIKE '%_send_states_transient';
DELETE FROM wp_options WHERE option_name LIKE '%_user_info_transient';
DELETE FROM wp_options WHERE option_name LIKE '%_user_agreements_transient';
DELETE FROM wp_options WHERE option_name LIKE '%_refresh_request_count';
DELETE FROM wp_options WHERE option_name LIKE '%failed_login_attempts';
DELETE FROM wp_options WHERE option_name LIKE '%_confirm_token';
DELETE FROM wp_options WHERE option_name LIKE '%_images_report';
DELETE FROM wp_options WHERE option_name LIKE '%_not_optimized_data';
DELETE FROM wp_options WHERE option_name LIKE '%_logs';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('two_page_speed');
DELETE FROM wp_usermeta WHERE meta_key IN ('two_page_speed');
DELETE FROM wp_termmeta WHERE meta_key IN ('two_page_speed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('two_page_speed');

