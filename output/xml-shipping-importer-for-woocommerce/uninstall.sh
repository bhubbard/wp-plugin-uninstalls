#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xml_shipping_import_option'

# Clear Cron Jobs
wp cron event delete 'wcxmlshippingimportaction'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'carrier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'carrier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'carrier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'carrier'"
