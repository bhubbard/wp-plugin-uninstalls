-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('two_plugin_activated_flow_init', 'two_flow_speed', 'flow_score_check_init', 'two_triggerPostOptimizationTasks', 'et_divi', 'no_optimize_pages', 'two_flow_status', 'two_delayed_js_execution_list_updated_fix_slashes', 'two_first_connect', 'incompatible_plugins_active_send', 'two_flow_critical_start', 'two_flow_score_log', 'two_clear_cache_from', 'wp_two_nonce_two_init_flow_score', 'two_activate_score_check_nonce_data', 'two_active_plugins_list', 'two_critical_default_settings', 'two-front-page-speed', 'elementor_experiment-e_lazyload', 'redirect_after_activation_option', 'tw_optimize_version', 'two_delayed_js_execution_list_updated', 'two_so_organization_name', 'two_so_organization_support_url', 'two_default_mode', 'two_set_not_optimizable_and_turn_off_mode_settings_v2', 'two_mode_front_page', 'two_set_dispatch_events', 'two_set_generate_ccss_on_load', 'two_set_compress_html_default', 'two_connection_after_io', 'two_settings', 'two_optimization_notif_status', 'two_optimized_date_front_page', 'two_auto_update_banner_was_shown', 'tenweb_domain_id', 'two_critical_blocked', 'tenweb_import_in_progress', 'two_update_default_excluded_css_list', 'tenweb_access_token', 'two_clear_cache_date', 'two_webp_delivery_working', 'two_home_url', 'two_test_mode', 'tenweb_manager_installed', 'two_conflicting_plugins', 'two_skip_loading_and_working', 'two_flow_mode_select', 'two_first_optimization', 'site_name');
DELETE FROM wp_options WHERE option_name IN ('auto_update_plugins', 'tenweb_ai_assistant_domain_id', 'two_referral_visited', 'tenweb_so_auth_error_logs', 'two_token_clear_cache', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_cache_structure_size';
DELETE FROM wp_options WHERE option_name LIKE '%_clear_cache_after_divi';
DELETE FROM wp_options WHERE option_name LIKE '%_old_divi_custom_css';
DELETE FROM wp_options WHERE option_name LIKE '%_domain_id';
DELETE FROM wp_options WHERE option_name LIKE '%_from_image_optimizer';
DELETE FROM wp_options WHERE option_name LIKE '%_client_referral_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_saved_nonce';
DELETE FROM wp_options WHERE option_name LIKE '%_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%_flow_id';
DELETE FROM wp_options WHERE option_name LIKE '%_notification_id';
DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id';
DELETE FROM wp_options WHERE option_name LIKE '%_reconnection_bar_was_shown';
DELETE FROM wp_options WHERE option_name LIKE '%_is_available';
DELETE FROM wp_options WHERE option_name LIKE 'two_critical%';
DELETE FROM wp_options WHERE option_name LIKE '%size';
DELETE FROM wp_options WHERE option_name LIKE 'two_critical_data_import_exception_%';
DELETE FROM wp_options WHERE option_name LIKE 'two_critical_data_import_response_%';
DELETE FROM wp_options WHERE option_name LIKE 'two_critical_data_import_data_%';
DELETE FROM wp_options WHERE option_name LIKE '%_requests_block';
DELETE FROM wp_options WHERE option_name LIKE '%_plugins_state_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_themes_state_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_addons_state_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_site_state_hash';
DELETE FROM wp_options WHERE option_name LIKE '%_connected_from';
DELETE FROM wp_options WHERE option_name LIKE '%_plugins_list';
DELETE FROM wp_options WHERE option_name LIKE '%_themes_list';
DELETE FROM wp_options WHERE option_name LIKE '%_addons_list';
DELETE FROM wp_options WHERE option_name LIKE '%_refresh_token';
DELETE FROM wp_options WHERE option_name LIKE '%_ai_assistant_domain_id';
DELETE FROM wp_options WHERE option_name LIKE '%_user_timezone_offset';
DELETE FROM wp_options WHERE option_name LIKE '%_user_info';
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
DELETE FROM wp_postmeta WHERE meta_key IN ('two_mode', 'two_page_speed', 'two_critical_pages', 'two_optimized_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('two_mode', 'two_page_speed', 'two_critical_pages', 'two_optimized_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('two_mode', 'two_page_speed', 'two_critical_pages', 'two_optimized_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('two_mode', 'two_page_speed', 'two_critical_pages', 'two_optimized_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'two_cache_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'two_cache_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'two_cache_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'two_cache_%';

