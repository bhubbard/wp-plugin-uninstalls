#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrr_setting_zomato_apikey'
wp option delete 'mrr_setting_zomato_restid'
wp option delete 'mrr_setting_google_apikey'
wp option delete 'mrr_setting_google_placeid'
wp option delete 'mrr_setting_display_sortorder'
wp option delete 'mrr_setting_display_maxdisplayreviews'
wp option delete 'mrr_setting_display_minrating'
wp option delete 'mrr_setting_display_maxwords'
wp option delete 'mrr_setting_general_polltime'
wp option delete 'mrr_setting_general_category'
wp option delete 'mrr_setting_general_maxfetchreviews'
wp option delete 'mrr_setting_reviews'

# Clear Cron Jobs
wp cron event delete 'mrr_cron_hook'

