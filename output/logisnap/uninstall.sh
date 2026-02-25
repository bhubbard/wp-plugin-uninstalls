#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'logisnap_settings'
wp option delete 'logisnap_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parcel_pickup_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parcel_pickup_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parcel_pickup_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parcel_pickup_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parcel_pickup_place_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parcel_pickup_place_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parcel_pickup_place_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parcel_pickup_place_description'"
