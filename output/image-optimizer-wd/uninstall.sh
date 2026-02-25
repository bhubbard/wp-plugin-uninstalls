#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'iowd_activation_redirect'
wp option delete 'iowd_onboarding_step'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_saved_nonce'"
wp option delete 'tenweb_manager_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_domain_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_from_image_optimizer'"
wp option delete 'tenwebio_was_connected'
wp option delete 'first_critical_generation_flag'
wp option delete 'two_flow_status'
wp option delete 'two_triggerPostOptimizationTasks'
wp option delete 'incompatible_plugins_active_send'
wp option delete 'flow_score_check_init'
wp option delete 'two_flow_score_log'
wp option delete 'two_clear_cache_from'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_referral_hash'"
wp option delete 'iowd_speed_score'
wp option delete 'iowd_homepage_optimized'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_available'"
wp option delete 'tenweb_domain_id'
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
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_refresh_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ai_assistant_domain_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_timezone_offset'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flow_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notification_id'"
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
wp option delete 'two-front-page-speed'

# Delete Transients
wp transient delete 'image_optimizer_auth_error_logs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_auth_error_logs' OR option_name LIKE '_site_transient_%_auth_error_logs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_client_products_transient' OR option_name LIKE '_site_transient_%_client_products_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_send_states_transient' OR option_name LIKE '_site_transient_%_send_states_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_user_info_transient' OR option_name LIKE '_site_transient_%_user_info_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_user_agreements_transient' OR option_name LIKE '_site_transient_%_user_agreements_transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_refresh_request_count' OR option_name LIKE '_site_transient_%_refresh_request_count'"
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%failed_login_attempts' OR option_name LIKE '_site_transient_%failed_login_attempts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_confirm_token' OR option_name LIKE '_site_transient_%_confirm_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_images_report' OR option_name LIKE '_site_transient_%_images_report'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_not_optimized_data' OR option_name LIKE '_site_transient_%_not_optimized_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_logs' OR option_name LIKE '_site_transient_%_logs'"

# Clear Cron Jobs
wp cron event delete 'tenwebio_compress_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'two_page_speed'"
