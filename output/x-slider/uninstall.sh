#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'x_slider_layout_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slider-src'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slider-src'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slider-src'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slider-src'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slider-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slider-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slider-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slider-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'x-slider-selected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'x-slider-selected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'x-slider-selected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'x-slider-selected'"
