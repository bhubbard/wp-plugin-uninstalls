#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dessky_responsive_slider_options'
wp option delete 'dessky_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dessky_slide_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dessky_slide_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dessky_slide_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dessky_slide_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dessky_slide_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dessky_slide_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dessky_slide_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dessky_slide_caption'"
