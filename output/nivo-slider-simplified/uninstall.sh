#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nivo_slider_simplified_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nivo_slider_simplified_slides'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nivo_slider_simplified_slides'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nivo_slider_simplified_slides'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nivo_slider_simplified_slides'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortcode'"
