#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'asd_wpsorter_version'
wp option delete 'asd_wpsorter_settings'

# Clear Cron Jobs
wp cron event delete 'asd_wpsorter_cleanup_orphaned_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'asd_wpsorter_product_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'asd_wpsorter_product_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'asd_wpsorter_product_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'asd_wpsorter_product_order'"
