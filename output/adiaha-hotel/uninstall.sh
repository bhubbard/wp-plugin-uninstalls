#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adh_pid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ds_hotelAPIData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ds_hotelAPIData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ds_hotelAPIData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ds_hotelAPIData'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ds_hotelid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ds_hotelid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ds_hotelid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ds_hotelid'"
