#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'two_plugin_activated_flow_init'
wp option delete 'two_flow_speed'
wp option delete 'flow_score_check_init'
wp option delete 'two_triggerPostOptimizationTasks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cache_structure_size'"
wp option delete 'et_divi'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_clear_cache_after_divi'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_old_divi_custom_css'"
wp option delete 'no_optimize_pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_domain_id'"
wp option delete 'two_flow_status'
wp option delete 'two_delayed_js_execution_list_updated_fix_slashes'
wp option delete 'two_first_connect'
wp option delete 'incompatible_plugins_active_send'
wp option delete 'two_flow_critical_start'
wp option delete 'two_flow_score_log'
wp option delete 'two_clear_cache_from'
wp option delete 'wp_two_nonce_two_init_flow_score'
wp option delete 'two_activate_score_check_nonce_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_from_image_optimizer'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_referral_hash'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_saved_nonce'"
wp option delete 'two_active_plugins_list'
wp option delete 'two_critical_default_settings'
wp option delete 'two-front-page-speed'
wp option delete 'elementor_experiment-e_lazyload'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_token'"
wp option delete 'redirect_after_activation_option'
wp option delete 'tw_optimize_version'
wp option delete 'two_delayed_js_execution_list_updated'
wp option delete 'two_so_organization_name'
wp option delete 'two_so_organization_support_url'
wp option delete 'two_default_mode'
wp option delete 'two_set_not_optimizable_and_turn_off_mode_settings_v2'
wp option delete 'two_mode_front_page'
wp option delete 'two_set_dispatch_events'
wp option delete 'two_set_generate_ccss_on_load'
wp option delete 'two_set_compress_html_default'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flow_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notification_id'"
wp option delete 'two_connection_after_io'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id'"
wp option delete 'two_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reconnection_bar_was_shown'"
wp option delete 'two_optimization_notif_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_available'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'two_critical%'"
wp option delete 'two_optimized_date_front_page'
wp option delete 'two_auto_update_banner_was_shown'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%size'"
wp option delete 'tenweb_domain_id'
wp option delete 'two_critical_blocked'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'two_critical_data_import_exception_%'"
wp option delete 'tenweb_import_in_progress'
wp option delete 'two_update_default_excluded_css_list'
wp option delete 'tenweb_access_token'
wp option delete 'two_clear_cache_date'
wp option delete 'two_webp_delivery_working'
wp option delete 'two_home_url'
wp option delete 'two_test_mode'
wp option delete 'tenweb_manager_installed'
wp option delete 'two_conflicting_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'two_critical_data_import_response_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'two_critical_data_import_data_%'"
wp option delete 'two_skip_loading_and_working'
wp option delete 'two_flow_mode_select'
wp option delete 'two_first_optimization'
wp option delete 'site_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_requests_block'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugins_state_hash'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_themes_state_hash'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_addons_state_hash'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_site_state_hash'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connected_from'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugins_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_themes_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_addons_list'"
wp option delete 'auto_update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_refresh_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ai_assistant_domain_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_timezone_offset'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ai_assistant_access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ai_assistant_refresh_token'"
wp option delete 'tenweb_ai_assistant_domain_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_confirm_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_configs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_compress_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_stat'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_webp_converted'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_running_compress_bulk'"
wp option delete 'two_referral_visited'

# Delete Transients
wp transient delete 'tenweb_so_auth_error_logs'
wp transient delete 'two_token_clear_cache'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_auth_error_logs' OR option_name LIKE '_site_transient_%_auth_error_logs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_client_products_transient' OR option_name LIKE '_site_transient_%_client_products_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_send_states_transient' OR option_name LIKE '_site_transient_%_send_states_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_user_info_transient' OR option_name LIKE '_site_transient_%_user_info_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_user_agreements_transient' OR option_name LIKE '_site_transient_%_user_agreements_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_refresh_request_count' OR option_name LIKE '_site_transient_%_refresh_request_count'"
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%failed_login_attempts' OR option_name LIKE '_site_transient_%failed_login_attempts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_confirm_token' OR option_name LIKE '_site_transient_%_confirm_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_images_report' OR option_name LIKE '_site_transient_%_images_report'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_not_optimized_data' OR option_name LIKE '_site_transient_%_not_optimized_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_logs' OR option_name LIKE '_site_transient_%_logs'"

# Clear Cron Jobs
wp cron event delete 'two_daily_cron_hook'
wp cron event delete 'tenwebio_compress_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'two_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'two_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'two_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'two_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'two_critical_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'two_critical_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'two_critical_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'two_critical_pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'two_optimized_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'two_optimized_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'two_optimized_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'two_optimized_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'two_cache_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'two_cache_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'two_cache_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'two_cache_%'"
