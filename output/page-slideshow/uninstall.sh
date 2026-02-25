#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'proseed-slideshow-imagesize-width'
wp option delete 'proseed-slideshow-imagesize-height'
wp option delete 'proseed-slideshow-animation'
wp option delete 'proseed-slideshow-direction'
wp option delete 'proseed-slideshow-control'
wp option delete 'proseed-slideshow-position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_data'"
