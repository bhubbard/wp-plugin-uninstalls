#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'timeline_express_date_time_migration_notice'
wp option delete 'timeline_express_date_time_migration_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement-date-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement-date-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement-date-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement-date-time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'announcement-date-format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'announcement-date-format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'announcement-date-format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'announcement-date-format'"
