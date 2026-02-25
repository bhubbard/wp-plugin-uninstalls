#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'almaweb_settings'
wp option delete 'almaweb_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"

# Delete Transients
wp transient delete 'almaweb_upgrade_error'
wp transient delete 'almaweb_distinct_families'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_almaweb_visits_by_family_%' OR option_name LIKE '_site_transient_almaweb_visits_by_family_%'"
wp transient delete 'almaweb_top_referrers'
wp transient delete 'almaweb_referrer_timeline'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_almaweb_referrer_insights_%' OR option_name LIKE '_site_transient_almaweb_referrer_insights_%'"

# Clear Cron Jobs
wp cron event delete 'almaweb_daily_cleanup'

