#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_delivery_date_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_delivery_date_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_delivery_date_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_delivery_date_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_days_available'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_days_available'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_days_available'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_days_available'"
