#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'postratings_max'

# Delete Transients
wp transient delete 'gdrts_dbfour_upgrade_steps'

# Clear Cron Jobs
wp cron event delete 'gdrts_cron_daily_maintenance_job'
wp cron event delete 'gdrts_cron_ondemand_maintenance_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdrts_rows_ratings_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdrts_rows_ratings_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdrts_rows_ratings_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdrts_rows_ratings_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdrts_rows_votes_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdrts_rows_votes_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdrts_rows_votes_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdrts_rows_votes_per_page'"
