#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'danw_first_time_notifcation'
wp option delete 'danw_time_notifcation'
wp option delete 'danw_day_notification'
wp option delete 'danw_duration_notification'
wp option delete 'danw_text_notifcation_view'
wp option delete 'danw_show_powered_by'
wp option delete 'danw_display_notification'
wp option delete 'danw_viewed_post'
wp option delete 'danw_viewed_page'
wp option delete 'danw_text_notifcation_purchase'
wp option delete 'danw_viewed_product'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%count_viewed_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%count_viewed_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%count_viewed_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%count_viewed_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%time_viewed_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%time_viewed_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%time_viewed_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%time_viewed_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%count_viewed_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%count_viewed_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%count_viewed_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%count_viewed_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%time_viewed_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%time_viewed_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%time_viewed_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%time_viewed_page'"
