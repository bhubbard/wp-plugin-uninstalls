#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aicg_admin_notices'
wp option delete 'aicg_model'
wp option delete 'aicg_temperature'
wp option delete 'aicg_max_tokens'
wp option delete 'aicg_api_key'
wp option delete 'aicg_default_language'
wp option delete 'aicg_cache_expiry'
wp option delete 'aicg_api_keys'
wp option delete 'aicg_api_key_encrypted'
wp option delete 'aicg_encryption_key'
wp option delete 'aicg_plugin_version'
wp option delete 'aicg_activation_date'
wp option delete 'aicg_usage_stats'

# Clear Cron Jobs
wp cron event delete 'aicg_process_bulk_queue'
wp cron event delete 'aicg_cleanup_temp_data'
wp cron event delete 'aicg_cleanup_cache'
wp cron event delete 'aicg_process_queue'
wp cron event delete 'aicg_update_usage_stats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aicg_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aicg_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aicg_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aicg_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aicg_quick_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aicg_quick_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aicg_quick_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aicg_quick_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aicg_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aicg_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aicg_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aicg_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aicg_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aicg_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aicg_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aicg_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aicg_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aicg_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aicg_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aicg_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aicg_generated_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aicg_generated_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aicg_generated_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aicg_generated_date'"
