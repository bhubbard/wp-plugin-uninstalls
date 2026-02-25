#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssa_ec'
wp option delete 'perfmatters_options'
wp option delete 'ssa_error_notices'
wp option delete 'ssa_dismissed_notices'
wp option delete 'ssa_pinned_notices'
wp option delete 'ssa_versions'
wp option delete 'admin_phone'
wp option delete 'ssa_export_backups'
wp option delete 'ssa_debug_level'
wp option delete 'ssa_version_changes'
wp option delete 'ssa_plugin_version'
wp option delete 'DRA_route_whitelist'
wp option delete 'health-check-disable-plugin-hash'
wp option delete 'health-check-allowed-plugins'
wp option delete 'health-check-default-theme'
wp option delete 'health-check-current-theme'
wp option delete 'health-check-backup-plugin-list'
wp option delete 'health-check-dashboard-notices'
wp option delete 'auto_core_update_failed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'rewrite_rules'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ssa/cache/lock_%' OR option_name LIKE '_site_transient_ssa/cache/lock_%'"
wp transient delete 'ssa/cache_version'
wp transient delete 'ssa/recent_availability_query_args'
wp transient delete 'ssa/cache/lock_global'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'ssa_cron_process_async_actions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventVenueID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventOrganizerID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'health-check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'health-check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'health-check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'health-check'"
