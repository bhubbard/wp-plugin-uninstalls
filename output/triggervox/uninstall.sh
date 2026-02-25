#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'triggervox_plugin_status'
wp option delete 'triggervox_current_userid'
wp option delete 'triggervox_setup_completed'
wp option delete 'triggervox_wpforms_integration_enabled'
wp option delete 'triggervox_cf7_integration_enabled'
wp option delete 'triggervox_unique_id'
wp option delete 'triggervox_integration_mode'
wp option delete 'triggervox_setup_banner_dismissed'
wp option delete 'triggervox_phone_verified'
wp option delete 'triggervox_last_phone_check'
wp option delete 'triggervox_button_bg_color'
wp option delete 'triggervox_button_text_color'
wp option delete 'triggervox_button_text'
wp option delete 'triggervox_button_photo'
wp option delete 'triggervox_popup_bg_color'
wp option delete 'triggervox_button_color'
wp option delete 'triggervox_text_color'
wp option delete 'triggervox_display_type'
wp option delete 'triggervox_widget_delay'
wp option delete 'triggervox_form_header'
wp option delete 'triggervox_form_subtitle'
wp option delete 'triggervox_form_disclaimer'
wp option delete 'triggervox_submit_button_text'
wp option delete 'triggervox_form_admin_only'
wp option delete 'triggervox_form_enable_debug_mode'
wp option delete 'triggervox_display_rules_type'
wp option delete 'triggervox_display_rules_pages'
wp option delete 'triggervox_display_rules_excluded_pages'
wp option delete 'triggervox_cf7_form_ids'
wp option delete 'triggervox_version'
wp option delete 'triggervox_last_subscription_check'
wp option delete 'triggervox_manual_urls'
wp option delete 'triggervox_excluded_urls'
wp option delete 'triggervox_debug_mode'
wp option delete 'triggervox_user_type'
wp option delete 'triggervox_subscription_status'
wp option delete 'triggervox_company_data'
wp option delete 'triggervox_wpforms_form_ids'
wp option delete 'triggervox_wpforms_add_to_contacts'
wp option delete 'triggervox_webhook_secret'
wp option delete 'triggervox_nextjs_app_url'
wp option delete 'triggervox_public_key'
wp option delete 'triggervox_assistant_id'
wp option delete 'triggervox_vapi_key'
wp option delete 'ai_call_agent_public_key'
wp option delete 'ai_call_agent_assistant_id'
wp option delete 'ai_call_agent_vapi_key'
wp option delete 'triggervox_webhook_urls_persistent'
wp option delete 'triggervox_api_keys_persistent'
wp option delete 'triggervox_setup_completed_at'
wp option delete 'triggervox_script_id'

# Delete Transients
wp transient delete 'triggervox_all_settings_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_triggervox_analytics_summary_%' OR option_name LIKE '_site_transient_triggervox_analytics_summary_%'"
wp transient delete 'triggervox_analytics_all_periods_summary'
wp transient delete 'triggervox_setup_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_triggervox_user_config_%' OR option_name LIKE '_site_transient_triggervox_user_config_%'"
wp transient delete 'triggervox_user_config_3'
wp transient delete 'triggervox_failed_logs'
wp transient delete 'triggervox_upgrade_logged_version'
wp transient delete 'triggervox_webhook_urls'
wp transient delete 'triggervox_api_keys'
wp transient delete 'triggervox_subscription_status'
wp transient delete 'triggervox_api_connection_test'
wp transient delete 'triggervox_analytics_data'

# Clear Cron Jobs
wp cron event delete 'triggervox_refresh_webhook_urls'
wp cron event delete 'triggervox_cleanup_old_data'
wp cron event delete 'triggervox_check_subscription_status'
wp cron event delete 'triggervox_sync_analytics'
wp cron event delete 'triggervox_backup_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'triggervox_wpforms_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'triggervox_wpforms_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'triggervox_wpforms_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'triggervox_wpforms_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'triggervox_cf7_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'triggervox_cf7_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'triggervox_cf7_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'triggervox_cf7_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'triggervox_plugin_enabled_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'triggervox_plugin_enabled_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'triggervox_plugin_enabled_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'triggervox_plugin_enabled_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'triggervox_setup_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'triggervox_setup_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'triggervox_setup_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'triggervox_setup_notice_dismissed'"
