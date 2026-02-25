#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_layermaps_layer_pin_colour_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_layermaps_pin_colour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_layermaps_pin_colour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_layermaps_pin_colour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_layermaps_pin_colour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_layermaps_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_layermaps_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_layermaps_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_layermaps_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_layermaps_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_layermaps_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_layermaps_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_layermaps_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_layermaps_long'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_layermaps_long'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_layermaps_long'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_layermaps_long'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_layermaps_pin_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_layermaps_pin_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_layermaps_pin_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_layermaps_pin_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_layermaps_kml_layer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_layermaps_kml_layer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_layermaps_kml_layer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_layermaps_kml_layer'"
