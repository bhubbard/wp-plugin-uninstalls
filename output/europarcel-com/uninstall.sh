#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EUROPARCELCOM_WC_VERSION'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'europarcelcom_wc_carrier_lockers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'europarcelcom_wc_carrier_lockers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'europarcelcom_wc_carrier_lockers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'europarcelcom_wc_carrier_lockers'"
