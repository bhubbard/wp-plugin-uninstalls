#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'olbversion'

# Clear Cron Jobs
wp cron event delete 'olb_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_skype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_skype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_skype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_skype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'olbgroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'olbgroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'olbgroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'olbgroup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'olbterm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'olbterm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'olbterm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'olbterm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'olbprofile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'olbprofile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'olbprofile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'olbprofile'"
