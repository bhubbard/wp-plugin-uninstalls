#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'primer_notification_posts_count_dismissed'
wp option delete 'primer_notification_posts_count_hide_until'
wp option delete 'my_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primer_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primer_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primer_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primer_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primer_data_frontend'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primer_data_frontend'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primer_data_frontend'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primer_data_frontend'"
