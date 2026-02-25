#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ticketrestaurant_mobile_settings'
wp option delete 'ticketrestaurant_mobile_auth_code'
wp option delete 'ticketrestaurant_mobile_callback_received'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticketrestaurant_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticketrestaurant_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticketrestaurant_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticketrestaurant_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticketrestaurant_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticketrestaurant_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticketrestaurant_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticketrestaurant_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticketrestaurant_phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticketrestaurant_phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticketrestaurant_phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticketrestaurant_phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
