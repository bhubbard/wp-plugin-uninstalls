#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_easytransac_settings'
wp option delete 'woocommerce_easytransac-sdd_settings'
wp option delete 'woocommerce_easytransac-paybybank_settings'
wp option delete 'woocommerce_easytransac-unified_settings'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_manage_stock'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_et_req_%' OR option_name LIKE '_site_transient_et_req_%'"

# Clear Cron Jobs
wp cron event delete 'woocommerce_cancel_unpaid_orders'
wp cron event delete 'easytransac_cancel_unpaid_orders_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easytransac-clientid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easytransac-clientid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easytransac-clientid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easytransac-clientid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ET_RequestId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ET_RequestId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ET_RequestId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ET_RequestId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ET_Tid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ET_Tid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ET_Tid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ET_Tid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vat_number'"
