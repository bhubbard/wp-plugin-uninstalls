#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbem_multiple_bookings'
wp option delete 'dbem_bookings_approval'
wp option delete 'dbem_bookings_anonymous'
wp option delete 'dbem_bookings_registration_disable'
wp option delete 'dbem_bookings_currency'
wp option delete 'eway_logging'
wp option delete 'eway_form_country'
wp option delete 'eway_form_first_name'
wp option delete 'eway_form_last_name'
wp option delete 'eway_form_address'
wp option delete 'eway_form_city'
wp option delete 'eway_form_state'
wp option delete 'eway_form_post_code'
wp option delete 'eway_form_email'
wp option delete 'wpsc_merchant_eway_stored'
wp option delete 'eway_test'
wp option delete 'custom_gateway_options'
wp option delete 'wpsc_merchant_eway_th'
wp option delete 'wpsc_merchant_eway_card_msg'
wp option delete 'wpsc_merchant_eway_beagle'
wp option delete 'eway_api_key'
wp option delete 'eway_password'
wp option delete 'eway_ecrypt_key'
wp option delete 'eway_sandbox_api_key'
wp option delete 'eway_sandbox_password'
wp option delete 'eway_sandbox_ecrypt_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eway_form_%'"
wp option delete 'woocommerce_eway_payments_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awpcp-profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awpcp-profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awpcp-profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awpcp-profile'"
