#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_doku_gateway_settings'
wp option delete 'doku_db_version'

# Delete Transients
wp transient delete 'main_settings_jokul_pg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checkoutParams'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checkoutParams'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checkoutParams'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checkoutParams'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checkoutConfig'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checkoutConfig'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checkoutConfig'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checkoutConfig'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'checkoutUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'checkoutUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'checkoutUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'checkoutUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jokul_cc_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jokul_cc_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jokul_cc_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jokul_cc_order_id'"
