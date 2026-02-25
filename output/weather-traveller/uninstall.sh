#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_travel_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_travel_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_travel_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_travel_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_travel_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_travel_temperature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_travel_temperature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_travel_temperature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_travel_temperature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_travel_humidity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_travel_humidity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_travel_humidity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_travel_humidity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_travel_dew'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_travel_dew'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_travel_dew'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_travel_dew'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_travel_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_travel_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_travel_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_travel_speed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_travel_direction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_travel_direction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_travel_direction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_travel_direction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_travel_clouds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_travel_clouds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_travel_clouds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_travel_clouds'"
