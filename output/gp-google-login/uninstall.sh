#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Gp_google_login_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'googleplus_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'googleplus_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'googleplus_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'googleplus_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'googleplus_profile_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'googleplus_profile_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'googleplus_profile_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'googleplus_profile_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gp_display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gp_display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gp_display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gp_display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
