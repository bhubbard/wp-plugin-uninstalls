#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glideshow-background-color'
wp option delete 'glideshow-img-height'
wp option delete 'glideshow-border-color'
wp option delete 'glideshow-img-width'
wp option delete 'glideshow-text-color'
wp option delete 'glideshow-title-size'
wp option delete 'glideshow-text-width'
wp option delete 'glideshow-navigation-background-color'
wp option delete 'glideshow-navigation-color'
wp option delete 'glideshow-navigation-active-color'
wp option delete 'glideshow-navigation-active-background-color'
wp option delete 'glideshow-slider-speed'
wp option delete 'glideshow-slider-style'
wp option delete 'glideshow-slider-auto'
wp option delete 'glideshow-slider-duration'
wp option delete 'glideshow-order'
wp option delete 'glideshow-sort'
wp option delete 'glideshow-text-length'
wp option delete 'glideshow-navigation-back'
wp option delete 'glideshow-navigation-next'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_glider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_glider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_glider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_glider'"
