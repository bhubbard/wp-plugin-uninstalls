#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'lh_relationships_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ical:dt%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ical:dt%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ical:dt%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ical:dt%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wgs84:lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wgs84:lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wgs84:lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wgs84:lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wgs84:long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wgs84:long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wgs84:long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wgs84:long'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foobar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foobar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foobar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foobar'"
