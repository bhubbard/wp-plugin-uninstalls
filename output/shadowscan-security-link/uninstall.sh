#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shadowscan_last_error'
wp option delete 'shadowscan_sentry_telemetry_enabled'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_shadowscan_mfa_notice_%' OR option_name LIKE '_site_transient_shadowscan_mfa_notice_%'"
wp transient delete 'update_core'
wp transient delete 'update_themes'
wp transient delete 'shadowscan_heartbeat_lock'
wp transient delete 'shadowscan_pair_notice'
wp transient delete 'shadowscan_pair_notice_type'

# Clear Cron Jobs
wp cron event delete 'shadowscan_emergency_heartbeat'
wp cron event delete 'shadowscan_heartbeat'
wp cron event delete 'shadowscan_poll_commands'
wp cron event delete 'shadowscan_integrity_scan'
wp cron event delete 'shadowscan_integrity_targeted_scan'
wp cron event delete 'shadowscan_owasp_daily_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shadowscan_locked_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shadowscan_locked_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shadowscan_locked_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shadowscan_locked_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shadowscan_lock_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shadowscan_lock_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shadowscan_lock_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shadowscan_lock_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shadowscan_lock_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shadowscan_lock_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shadowscan_lock_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shadowscan_lock_reason'"
