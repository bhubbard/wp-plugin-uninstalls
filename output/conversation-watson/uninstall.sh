#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'watsonconv_credentials'
wp option delete 'watsonconv_twilio'
wp option delete 'watsonconv_twiml_sid'
wp option delete 'watsonconv_call_id'
wp option delete 'watsonconv_call_recipient'
wp option delete 'watsonconv_total_requests'
wp option delete 'watsonconv_use_limit'
wp option delete 'watsonconv_limit'
wp option delete 'watsonconv_limit_message'
wp option delete 'watsonconv_use_client_limit'
wp option delete 'watsonconv_client_limit'
wp option delete 'watsonconv_client_limit_message'
wp option delete 'watsonconv_history_enabled'
wp option delete 'watsonconv_history_debug_enabled'
wp option delete 'watsonconv_mail_vars_enabled'
wp option delete 'watsonconv_client_list'
wp option delete 'watsonconv_interval'
wp option delete 'watsonconv_client_interval'
wp option delete 'watsonconv_mail_vars_email_address_to'
wp option delete 'watsonconv_smtp_setting_enabled'
wp option delete 'watsonconv_mail_vars_smtp_host'
wp option delete 'watsonconv_mail_vars_smtp_authentication'
wp option delete 'watsonconv_mail_vars_smtp_port'
wp option delete 'watsonconv_mail_vars_smtp_secure'
wp option delete 'watsonconv_mail_vars_smtp_username'
wp option delete 'watsonconv_mail_vars_smtp_password'
wp option delete 'watsonconv_last_cron_check'
wp option delete 'watsonconv_cron_was_reliable'
wp option delete 'watsonconv_runner_state'
wp option delete 'watsonconv_runner_launched'
wp option delete 'watsonconv_fallback_state'
wp option delete 'watsonconv_fallback_time'
wp option delete 'watsonconv_notification_enabled'
wp option delete 'watsonconv_notification_summary_prev_ts'
wp option delete 'watsonconv_notification_summary_interval'
wp option delete 'watsonconv_notification_email_to'
wp option delete 'watsonconv_font_size'
wp option delete 'watsonconv_font_size_fs'
wp option delete 'watsonconv_fab_text_size'
wp option delete 'watsonconv_fab_icon_size'
wp option delete 'watsonconv_color'
wp option delete 'watsonconv_size'
wp option delete 'watsonconv_position'
wp option delete 'watsonconv_logo'
wp option delete 'watsonconv_full_screen'
wp option delete 'watsonconv_css_cache'
wp option delete 'watsonconv_custom_logo'
wp option delete 'watsonconv_fname_var'
wp option delete 'watsonconv_lname_var'
wp option delete 'watsonconv_nname_var'
wp option delete 'watsonconv_email_var'
wp option delete 'watsonconv_login_var'
wp option delete 'watsonconv_plugin_version_var'
wp option delete 'watsonconv_typing_delay_from_plugin'
wp option delete 'watsonconv_delay'
wp option delete 'watsonconv_minimized'
wp option delete 'watsonconv_title'
wp option delete 'watsonconv_clear_text'
wp option delete 'watsonconv_message_prompt'
wp option delete 'watsonconv_send_btn'
wp option delete 'watsonconv_fab_icon_pos'
wp option delete 'watsonconv_fab_text'
wp option delete 'watsonconv_use_twilio'
wp option delete 'watsonconv_call_tooltip'
wp option delete 'watsonconv_call_button'
wp option delete 'watsonconv_calling_text'
wp option delete 'watsonconv_message_after_error'
wp option delete 'watsonconv_clear_chat'
wp option delete 'watsonconv_show_on'
wp option delete 'watsonconv_home_page'
wp option delete 'watsonconv_pages'
wp option delete 'watsonconv_posts'
wp option delete 'watsonconv_categories'
wp option delete 'watsonconv_last_applied_update'
wp option delete 'watsonconv_logger_initialized'
wp option delete 'watsonconv_log_fetch_ts'
wp option delete 'watsonconv_log_fetch_event'
wp option delete 'watsonconv_history_limit'
wp option delete 'watsonconv_notification_send_test'
wp option delete 'watsonconv_history_limit_enabled'
wp option delete 'watsonconv_cleanup_offset'

# Delete Transients
wp transient delete 'watsonconv_total_requests'
wp transient delete 'watsonconv_client_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'watson_save_to_disk'
wp cron event delete 'watson_reset_total_usage'
wp cron event delete 'watson_reset_client_usage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
