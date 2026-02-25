#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_square_settings'
wp option delete 'woo_square_location_id_free'
wp option delete 'woo_square_access_token_free'
wp option delete 'mycred_pref_core'
wp option delete 'woo_square_auth_response'
wp option delete 'woo_square_access_token_cauth'
wp option delete 'woo_square_update_msg_dissmiss'
wp option delete 'woo_square_auth_notice'
wp option delete 'woo_square_locations_free'
wp option delete 'woo_square_business_name_free'

