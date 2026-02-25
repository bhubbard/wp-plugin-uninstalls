#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spamblocker_ai_comments_enabled'
wp option delete 'spamblocker_ai_fallback_count'
wp option delete 'spamblocker_ai_api_provider'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp option delete 'spamblocker_ai_gemini_api_key'
wp option delete 'spamblocker_ai_openai_api_key'
wp option delete 'spamblocker_ai_gemini_model'
wp option delete 'spamblocker_ai_openai_model'
wp option delete 'spamblocker_ai_log_spam'
wp option delete 'spamblocker_ai_log_ip_user_agent'
wp option delete 'spamblocker_ai_error_message'
wp option delete 'spamblocker_ai_debug'
wp option delete 'spamblocker_ai_gemini_available_models'
wp option delete 'spamblocker_ai_openai_available_models'
wp option delete 'spamblocker_ai_fallback_notice_dismissed'
wp option delete 'spamblocker_ai_version'
wp option delete 'spamblocker_ai_api_error_message'
wp option delete 'spamblocker_ai_rate_limit_count'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_spamblocker_ai_notice_%' OR option_name LIKE '_site_transient_spamblocker_ai_notice_%'"
wp transient delete 'spamblocker_ai_gemini_models_full_data'
wp transient delete 'spamblocker_ai_gemini_models_cache'
wp transient delete 'spamblocker_ai_openai_models_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_spamblocker_ai_error_form_%' OR option_name LIKE '_site_transient_spamblocker_ai_error_form_%'"

# Clear Cron Jobs
wp cron event delete 'spamblocker_ai_cleanup_logs'

