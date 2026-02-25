#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'slideshow-jquery-image-gallery-updated-from-v2-2-17-to-v2-2-20'
wp option delete 'slideshow-jquery-image-gallery-updated-from-v2-2-16-to-v2-2-17'
wp option delete 'slideshow-jquery-image-gallery-updated-from-v2-2-12-to-v2-2-16'
wp option delete 'slideshow-jquery-image-gallery-updated-from-v2-2-8-to-v2-2-12'
wp option delete 'slideshow-jquery-image-gallery-updated-from-v2-2-0-to-v2-2-8'
wp option delete 'slideshow-jquery-image-gallery-updated-from-v2-1-23-to-v2-2-0'
wp option delete 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-23'
wp option delete 'slideshow-jquery-image-gallery-updated-from-v2-1-20-to-v2-1-22'
wp option delete 'slideshow-plugin-updated-from-v2-to-v2-1-20'
wp option delete 'slideshow-plugin-updated-from-v1-x-x-to-v2-0-1'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'styleSettings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'styleSettings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'styleSettings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'styleSettings'"
