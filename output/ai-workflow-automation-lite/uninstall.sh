#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_ai_workflows_installation_id'
wp option delete 'wp_ai_workflows_analytics_opt_out'
wp option delete 'wp_ai_workflows_last_activation'
wp option delete 'wp_ai_workflows_installed_at'
wp option delete 'wp_ai_workflows_settings'
wp option delete 'wp_ai_workflows_costs'
wp option delete 'wp_ai_workflows_multimedia_costs'
wp option delete 'wp_ai_workflows_cost_settings'
wp option delete 'wp_ai_workflows_last_cost_sync'
wp option delete 'wp_ai_workflows_db_version'
wp option delete 'wp_ai_workflows_chat_db_version'
wp option delete 'wp_ai_workflows'
wp option delete 'wp_ai_workflows_outputs'
wp option delete 'wp_ai_workflows_encrypted_api_key'
wp option delete 'wp_ai_workflows_api_key'
wp option delete 'wp_ai_workflows_google_integrated'
wp option delete 'wp_ai_workflows_google_token_info'
wp option delete 'wp_ai_workflows_google_access_token'
wp option delete 'wp_ai_workflows_google_refresh_token'
wp option delete 'wp_ai_workflows_active_sse_sessions'
wp option delete 'wp_ai_workflows_task_roles'
wp option delete 'wp_ai_workflows_setup_completed'
wp option delete 'wp_ai_workflows_google_redirect_uri'
wp option delete 'wp_ai_workflows_migrated_to_table'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_ai_workflows_chat_config_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_ai_workflows_webhook_%'"
wp option delete 'wp_ai_workflows_human_tasks_db_version'
wp option delete 'wp_ai_workflows_lite_version'
wp option delete 'wp_ai_workflows_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_ai_workflows_refresh_chat_%' OR option_name LIKE '_site_transient_wp_ai_workflows_refresh_chat_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_ai_workflows_action_result_%' OR option_name LIKE '_site_transient_wp_ai_workflows_action_result_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_ai_chat_session_%' OR option_name LIKE '_site_transient_wp_ai_chat_session_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_ai_workflows_webhook_sample_%' OR option_name LIKE '_site_transient_wp_ai_workflows_webhook_sample_%'"
wp transient delete 'wp_ai_workflows_needs_google_reauth'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_ai_workflows_pending_execution_%' OR option_name LIKE '_site_transient_wp_ai_workflows_pending_execution_%'"
wp transient delete 'wp_ai_workflows_openrouter_models'
wp transient delete 'wp_ai_workflows_migration_postponed'
wp transient delete 'wp_ai_workflows_migration_lock'
wp transient delete 'wp_ai_workflows_lite_notice_dismissed'

# Clear Cron Jobs
wp cron event delete 'wp_ai_workflows_daily_analytics'
wp cron event delete 'wp_ai_workflows_check_action_result'
wp cron event delete 'wp_ai_workflows_cleanup_chat_data'
wp cron event delete 'wp_ai_workflows_execute_delayed_output'
wp cron event delete 'wp_ai_workflows_rss_check'
wp cron event delete 'wp_ai_workflows_execute_scheduled_workflow'
wp cron event delete 'wp_ai_workflows_execute_scheduled'
wp cron event delete 'wp_ai_workflows_execute_webhook_workflow'
wp cron event delete 'wp_ai_workflows_process_form_submission'
wp cron event delete 'wp_ai_workflows_execute_workflow'
wp cron event delete 'wp_ai_workflows_process_login_trigger'
wp cron event delete 'wp_ai_workflows_daily_maintenance'
wp cron event delete 'wp_ai_workflows_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
