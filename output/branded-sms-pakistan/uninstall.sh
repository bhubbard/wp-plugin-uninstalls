#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_setting'"
wp option delete '_bsp_optin'
wp option delete '1.0'
wp option delete 'wcj_order_number_prefix'
wp option delete 'bsp_gateway_credentials_front_page_options'
wp option delete 'bsp_order_verification_front_page_options'
wp option delete 'bsp_messages_text_front_page_options'
wp option delete 'bsp_support_front_page_options'

# Delete Transients
wp transient delete 'fx-admin-notice-test'
wp transient delete 'fx-admin-notice-example'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dvs_courier_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dvs_courier_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dvs_courier_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dvs_courier_tracking'"
