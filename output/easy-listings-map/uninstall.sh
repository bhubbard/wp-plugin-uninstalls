#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ignore_asana_plugins_messages'
wp option delete 'asana_active_free_plugin'
wp option delete 'elm_settings'

# Delete Transients
wp transient delete '_elm_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_address_coordinates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_address_coordinates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_address_coordinates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_address_coordinates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_bedrooms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_bedrooms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_bedrooms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_bedrooms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_bathrooms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_bathrooms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_bathrooms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_bathrooms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_garage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_garage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_garage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_garage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_carport'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_carport'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_carport'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_carport'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_air_conditioning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_air_conditioning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_air_conditioning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_air_conditioning'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_pool'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_pool'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_pool'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_pool'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_status'"
