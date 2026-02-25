#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'apaczka_countries_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_messages'"

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcel_machine_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcel_machine_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcel_machine_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcel_machine_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apaczka'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apaczka'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apaczka'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apaczka'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'apaczka_delivery_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'apaczka_delivery_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'apaczka_delivery_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'apaczka_delivery_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_parcel_locker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_parcel_locker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_parcel_locker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_parcel_locker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apaczka_parcel_machine_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apaczka_parcel_machine_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apaczka_parcel_machine_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apaczka_parcel_machine_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apaczka_parcel_machine_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apaczka_parcel_machine_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apaczka_parcel_machine_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apaczka_parcel_machine_address'"
