#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mymap_checkbox'
wp option delete 'mymap_color_picker'
wp option delete 'mymap_api_key'
wp option delete 'mymap_checkbox_billing'
wp option delete 'mymap_checkbox_shipping'
wp option delete 'mymap_location_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mymap_location_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mymap_location_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mymap_location_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mymap_location_url'"
