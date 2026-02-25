#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storeone_extension_theme_slider_moved_dissmiss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tf_slider_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tf_slider_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tf_slider_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tf_slider_data'"
