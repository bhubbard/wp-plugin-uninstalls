#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'udigroup_globkurier_ghost_post_id'
wp option delete 'globkurier_token'
wp option delete 'globkurier_token_expire_at'
wp option delete 'globkurier_extra_pickup_points'
wp option delete 'gkStoreInpostPointsValidTime'
wp option delete 'globkurier'
wp option delete 'udigroup_gkInPostPoints'
wp option delete 'udigroup_gkInPostPointsDownloadedAt'
wp option delete 'udigroup_gkRuchPointsDownloadedAt'
wp option delete 'udigroup_gkRuchPoints'
wp option delete 'globkurier-username'
wp option delete 'globkurier-password'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_globkurier_inpost_international_points_%' OR option_name LIKE '_site_transient_globkurier_inpost_international_points_%'"
wp transient delete 'globkurier_countries_map'

# Clear Cron Jobs
wp cron event delete 'updateInpostPoints'
wp cron event delete 'updateInpostPoints2'

