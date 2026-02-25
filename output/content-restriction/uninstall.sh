#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete '_content_restriction_redirect_to_dashboard'
wp option delete '_content_restriction_first_activation_time'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'login_me_now_facebook_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'login_me_now_facebook_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'login_me_now_facebook_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'login_me_now_facebook_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'login_me_now_google_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'login_me_now_google_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'login_me_now_google_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'login_me_now_google_verified'"
