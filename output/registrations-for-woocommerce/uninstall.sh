#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_registrations_is_active'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribute_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribute_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribute_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribute_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_week_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_week_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_week_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_week_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
