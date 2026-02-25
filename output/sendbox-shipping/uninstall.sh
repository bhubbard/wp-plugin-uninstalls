#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooss_option_enable'
wp option delete 'sendbox_data'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_currency'
wp option delete 'wooss_connection_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooss_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooss_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooss_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooss_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooss_extra_fees'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooss_extra_fees'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooss_extra_fees'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooss_extra_fees'"
