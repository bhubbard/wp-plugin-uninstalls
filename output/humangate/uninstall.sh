#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'humang_block_search_engines'
wp option delete 'humang_global_refusal'
wp option delete 'humang_enforcement_mode'
wp option delete 'humang_verify_search_engine_bots'
wp option delete 'humang_lockdown_mode'
wp option delete 'humang_friction_enabled'
wp option delete 'humang_friction_burst_pages'
wp option delete 'humang_friction_burst_seconds'
wp option delete 'humang_friction_rate_pages'
wp option delete 'humang_friction_rate_seconds'
wp option delete 'humang_lockdown_require_login'
wp option delete 'humang_disable_robots_txt'
wp option delete 'humang_stats_retention'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'humang_refusal_post_types_%'"
wp option delete 'humang_whitelist_ips'
wp option delete 'humang_whitelist_user_agents'

# Delete Transients
wp transient delete 'humang_daily_counters'
wp transient delete 'humang_weekly_counters'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_humang_challenge_%' OR option_name LIKE '_site_transient_humang_challenge_%'"

# Clear Cron Jobs
wp cron event delete 'humang_weekly_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_humangate_refusal_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_humangate_refusal_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_humangate_refusal_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_humangate_refusal_enabled'"
