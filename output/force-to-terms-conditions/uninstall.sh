#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fttnc_page_id'
wp option delete 'fttnc_last_update'
wp option delete 'termnc_display_type'
wp option delete 'termnc_notice_info'
wp option delete 'termnc_custom_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ulast_agree_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ulast_agree_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ulast_agree_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ulast_agree_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fttnc_exclude_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fttnc_exclude_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fttnc_exclude_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fttnc_exclude_user'"
