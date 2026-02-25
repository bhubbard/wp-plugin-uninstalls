#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paytomorrow_settings'
wp option delete 'woocommerce_new_order_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer PayTomorrow address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer PayTomorrow address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer PayTomorrow address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer PayTomorrow address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer first name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payer last name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Payment type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Payment type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Payment type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Payment type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'carrier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'carrier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'carrier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'carrier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_routeapp_route_charge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_routeapp_route_charge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_routeapp_route_charge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_routeapp_route_charge'"
