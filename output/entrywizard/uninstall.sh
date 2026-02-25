#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ewz_data_version'
wp option delete 'cron'
wp option delete 'ewz_db_version'

# Clear Cron Jobs
wp cron event delete 'ewz_do_action_webform'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewz_itemsperpage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewz_itemsperpage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewz_itemsperpage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewz_itemsperpage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutenberg_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutenberg_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutenberg_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutenberg_notice_dismissed'"
