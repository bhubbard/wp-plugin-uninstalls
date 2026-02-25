#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stm_vin_method_name'
wp option delete 'stm_vin_method_name_history'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'stm_vin_decoder_%'"
wp option delete 'stm_vehicle_listing_options'
wp option delete 'value'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vin_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vin_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vin_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vin_number'"
