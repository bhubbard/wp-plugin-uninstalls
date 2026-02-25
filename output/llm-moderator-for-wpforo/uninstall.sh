#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'colaias_wpforo_ai_flag_types'
wp option delete 'colaias_wpforo_ai_can_log_info'
wp option delete 'colaias_wpforo_ai_openrouter_api_key'
wp option delete 'colaias_wpforo_ai_openrouter_model'
wp option delete 'colaias_wpforo_ai_send_metrics_to_openrouter'
wp option delete 'colaias_wpforo_ai_custom_xtitle_for_openrouter'
wp option delete 'colaias_wpforo_ai_moderation_prompt'
wp option delete 'colaias_wpforo_ai_mute_duration'
wp option delete 'colaias_wpforo_ai_openrouter_timeout'
wp option delete 'colaias_wpforo_ai_use_context'
wp option delete 'colaias_wpforo_ai_max_succeeding'
wp option delete 'colaias_wpforo_ai_max_preceding'
wp option delete 'colaias_wpforo_ai_cached_site_url'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_colaias_action_notice_%' OR option_name LIKE '_site_transient_colaias_action_notice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_colaias_wpforo_ai_user_notices_%' OR option_name LIKE '_site_transient_colaias_wpforo_ai_user_notices_%'"

# Clear Cron Jobs
wp cron event delete 'colaias_wpforo_ai_job_cleanup'
wp cron event delete 'colaias_wpforo_ai_job_flag_metrics_cleanup'
wp cron event delete 'colaias_wpforo_ai_async_post_verification'
wp cron event delete 'colaias_wpforo_ai_async_status_verification'

