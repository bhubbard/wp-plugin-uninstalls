#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'momo_acg_openai_settings'
wp option delete 'momo_rssfeed_openai_settings'
wp option delete 'momo_autoblog_openai_settings'
wp option delete 'momo_acg_rssfeed_event_list'
wp option delete 'momo_acg_scw_event_list'
wp option delete 'momo_acg_chatbot_settings'
wp option delete 'momo_acg_cb_trainings_list'
wp option delete 'momo_acg_cb_trainings_settings'
wp option delete 'momo_acgwc_cb_trainings_settings'
wp option delete 'momo_acg_cb_dashboard_contents'
wp option delete 'momo_chatgpt_openai_settings'
wp option delete 'momo_acg_blocks_settings'
wp option delete 'momo_acg_general_settings'
wp option delete 'momo_acg_credit_system_settings'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'momo_wsw_api_cache_settings'
wp option delete 'momo_acg_wc_openai_settings'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'momo_acg_trainings_embeddings_hook'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acg_credit_plan_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acg_credit_plan_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acg_credit_plan_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acg_credit_plan_enabled'"
