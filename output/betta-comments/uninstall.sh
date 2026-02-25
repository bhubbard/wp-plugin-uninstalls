#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'betta_permanent_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'betta_comments_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'betta_comments_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'betta_comments_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'betta_comments_per_page'"
