#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'sharcaby_cleanup_old_cart_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_shared_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_shared_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_shared_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shared_cart_%'"
