#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'postmen_api_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postmen_wp_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postmen_wp_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postmen_wp_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postmen_wp_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
