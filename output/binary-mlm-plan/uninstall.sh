#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bmp_manage_general'
wp option delete 'bmp_manage_eligibility'
wp option delete 'bmp_manage_payout'
wp option delete 'bmp_manage_email'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_bmp_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_bmp_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_bmp_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_bmp_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmp_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmp_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmp_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmp_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmp_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmp_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmp_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmp_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmp_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmp_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmp_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmp_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmp_sponsor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmp_sponsor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmp_sponsor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmp_sponsor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmp_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmp_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmp_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmp_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmp_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmp_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmp_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmp_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bmp_page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bmp_page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bmp_page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bmp_page_title'"
