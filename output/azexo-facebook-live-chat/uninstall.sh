#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'azh-fb-settings'
wp option delete 'azm-fb-pages'
wp option delete 'azm-fb-verify-token'
wp option delete 'azm-fb-access-token'

# Clear Cron Jobs
wp cron event delete 'azm_send_fb_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_receivers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_receivers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_receivers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_receivers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fb_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fb_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fb_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fb_clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rule'"
