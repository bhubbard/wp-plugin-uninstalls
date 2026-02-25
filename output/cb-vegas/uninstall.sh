#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cb_vegas_options'

# Delete Transients
wp transient delete 'cb_vegas_validation_transient'
wp transient delete 'cb_vegas_current_slideshow_index_transient'
wp transient delete 'cb_vegas_current_options_transient'
wp transient delete 'cb_vegas_current_menu_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_vegas_singular'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_vegas_singular'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_vegas_singular'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_vegas_singular'"
