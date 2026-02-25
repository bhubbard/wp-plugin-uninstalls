#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zcwc_connect_time'
wp option delete 'zcwc_rated'
wp option delete 'zcwc_domname'
wp option delete 'zcwc_integration'
wp option delete 'zcwc_optin_setting'
wp option delete 'zcwc_store_stats'
wp option delete 'zcwc_intergration_details'
wp option delete 'zcwc_error_msg'
wp option delete 'zcwc_wc_token'
wp option delete 'zcwc_token_details'
wp option delete 'zcwc_user'
wp option delete 'zcwc_user_email'
wp option delete 'zcwc_script'
wp option delete 'zcwc_script_setting'

# Clear Cron Jobs
wp cron event delete 'zcwc_track_order_event_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zcwc_newsletter_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zcwc_newsletter_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zcwc_newsletter_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zcwc_newsletter_subscription'"
