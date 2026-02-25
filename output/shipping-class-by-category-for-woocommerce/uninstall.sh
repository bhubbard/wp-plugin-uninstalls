#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scbcfw_shipping_class_column'

# Clear Cron Jobs
wp cron event delete 'scbcfw_cleanup_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scbcfw_shipping_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scbcfw_shipping_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scbcfw_shipping_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scbcfw_shipping_class'"
