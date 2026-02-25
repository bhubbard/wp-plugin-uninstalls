#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mzr_shipping_providers'
wp option delete 'mzr_enable_order_tracking'
wp option delete 'mzr_enable_tracking_email'
wp option delete 'mzr_tracking_email_template'
wp option delete 'mzr_show_in_customer_account'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mzr_tracking_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mzr_tracking_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mzr_tracking_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mzr_tracking_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mzr_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mzr_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mzr_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mzr_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mzr_date_shipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mzr_date_shipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mzr_date_shipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mzr_date_shipped'"
