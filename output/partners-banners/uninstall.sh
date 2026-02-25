#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_partners_banners'

# Clear Cron Jobs
wp cron event delete 'delete_expired_partnersbanners'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partnerlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partnerlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partnerlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partnerlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partnerbanner_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partnerbanner_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partnerbanner_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partnerbanner_expires'"
