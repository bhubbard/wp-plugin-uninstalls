#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ipintel_kill_switch'
wp option delete 'ipintel_api_key'
wp option delete 'ipintel_mode'
wp option delete 'ipintel_block_threshold'
wp option delete 'ipintel_last_usage'
wp option delete 'ipintel_whitelist'
wp option delete 'ipintel_blacklist'
wp option delete 'ipintel_request_log'
wp option delete 'ipintel_challenge_threshold'
wp option delete 'ipintel_challenge_theme'
wp option delete 'ipintel_block_theme'
wp option delete 'ipintel_challenge_duration'
wp option delete 'ipintel_footer_badge'
wp option delete 'ipintel_last_usage_time'
wp option delete 'ipintel_plan'
wp option delete 'ipintel_cache_index'
wp option delete 'ipintel_threat_log'
wp option delete 'ipintel_firewall_enabled'

# Clear Cron Jobs
wp cron event delete 'ipintel_prune_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipintel_cache_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipintel_cache_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipintel_cache_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipintel_cache_notice_dismissed'"
