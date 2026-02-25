#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_color_scheme'
wp option delete 'sp_layout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_fb_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_fb_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_fb_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_fb_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_twitter_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_twitter_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_twitter_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_twitter_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_linkedin_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_linkedin_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_linkedin_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_linkedin_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_gplus_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_gplus_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_gplus_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_gplus_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_staff_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_staff_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_staff_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_staff_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_status'"
