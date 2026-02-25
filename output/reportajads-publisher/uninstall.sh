#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reportaj_ads_publisher_settings'

# Clear Cron Jobs
wp cron event delete 'reportaj_ads_publisher_import_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reportaj_ads_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reportaj_ads_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reportaj_ads_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reportaj_ads_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reportaj_ads_sent_api'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reportaj_ads_sent_api'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reportaj_ads_sent_api'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reportaj_ads_sent_api'"
