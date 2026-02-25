#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mzoo_didml_display_image_dimensions_01'
wp option delete 'mzoo_display_image_dimensions_01'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_pixels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_pixels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_pixels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_pixels'"
