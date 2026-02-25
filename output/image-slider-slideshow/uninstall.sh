#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpg-slider-images-default'
wp option delete 'img-slider-v'
wp option delete 'img-slider-type'
wp option delete 'img-slider-installDate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slider-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slider-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slider-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slider-images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'img-slider-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'img-slider-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'img-slider-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'img-slider-settings'"
