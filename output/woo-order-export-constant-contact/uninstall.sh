#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_wps_constant_contact_woo_list_id'
wp option delete 'wc_wps_constant_contact_woo_order_status'
wp option delete 'wps_cc_woo_log'
wp option delete 'wc_wps_constant_contact_woo_access_token'
wp option delete 'wc_wps_constant_contact_woo_api_key'
wp option delete 'wps_woo_order_expo_to_cc'
wp option delete 'wps_woo_order_expo_to_cc_ver'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'constant_contact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'constant_contact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'constant_contact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'constant_contact_id'"
