#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_customer_address'
wp option delete 'fkwcs_wp_stripe'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce-ppcp-settings'
wp option delete 'fkcart_settings'
wp option delete 'trp_settings'
wp option delete 'fkcart_db_options'
wp option delete 'fkcart_db_options_new_db'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_total_display'

# Delete Transients
wp transient delete 'fkcart_templates_v3'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fkcart_notifications_close'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fkcart_notifications_close'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fkcart_notifications_close'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fkcart_notifications_close'"
