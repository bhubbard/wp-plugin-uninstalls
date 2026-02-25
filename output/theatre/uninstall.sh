#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'theater_last_succesful_update_order_indexes_timestamp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%'"
wp option delete 'wp_theatre'
wp option delete 'wpt_style'
wp option delete 'wpt_tickets'
wp option delete 'wpt_language'
wp option delete 'theatre'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_stats'"
wp option delete 'wpt_listing_page'
wp option delete 'wpt/production/permalink'
wp option delete 'wpt_version'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'wpt_extensions_promo_feed'
wp transient delete 'wpt_listing_page_flush_rules'

# Clear Cron Jobs
wp cron event delete 'wpt_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enddate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enddate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enddate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enddate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_event_tickets_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_event_tickets_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_event_tickets_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_event_tickets_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tickets_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tickets_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tickets_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tickets_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tickets_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tickets_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tickets_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tickets_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tickets_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tickets_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tickets_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tickets_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'venue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'venue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'venue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'venue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_source_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_source_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_source_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_source_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_theatre_season'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_theatre_season'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_theatre_season'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_theatre_season'"
