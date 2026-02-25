#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cb_parallax_options'
wp option delete 'cb_parallax_plugin'

# Delete Transients
wp transient delete 'cb_parallax_background_image_missing'
wp transient delete 'cb_parallax_background_image_missmatch'
wp transient delete 'cb_parallax_has_nsr'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_parallax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_parallax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_parallax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_parallax'"
