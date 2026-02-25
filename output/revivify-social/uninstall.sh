#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sss_settings_data'
wp option delete 'sss_cron_marker'
wp option delete 'sss_log'
wp option delete 'sss_shared_x_pos'
wp option delete 'cron'

# Delete Transients
wp transient delete 'syn_revivify_transient_upgrade'

# Clear Cron Jobs
wp cron event delete 'wp_synex_revivify_cronjob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'SRS_SHARED_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'SRS_SHARED_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'SRS_SHARED_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'SRS_SHARED_%'"
