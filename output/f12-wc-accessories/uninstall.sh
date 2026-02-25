#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_currency_pos'

# Delete Transients
wp transient delete 'f12_accessories_overview_map'
wp transient delete 'f12_accessories_dashboard_stats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'f12-woo-accessoire_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'f12-woo-accessoire_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'f12-woo-accessoire_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'f12-woo-accessoire_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'f12-woo-required_accessoire_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'f12-woo-required_accessoire_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'f12-woo-required_accessoire_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'f12-woo-required_accessoire_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'f12-woo-accessoire_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'f12-woo-accessoire_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'f12-woo-accessoire_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'f12-woo-accessoire_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'f12-woo-accessoire_recommended'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'f12-woo-accessoire_recommended'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'f12-woo-accessoire_recommended'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'f12-woo-accessoire_recommended'"
