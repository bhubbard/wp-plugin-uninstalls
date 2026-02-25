#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'orderweight_enable_order_notes'
wp option delete 'orderweight_enable_admin_emails'
wp option delete 'orderweight_enable_customer_emails'
wp option delete 'orderweight_customer_dashboard'

# Delete Transients
wp transient delete 'order_weight_update_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_weight_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_weight_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_weight_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_weight_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_weight'"
