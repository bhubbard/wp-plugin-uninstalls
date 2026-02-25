#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imagineDefaultWidth'
wp option delete 'optionImagineThumbnailWidth'
wp option delete 'optionImagineThumbnailRatio'
wp option delete 'optionImagineDefaultGalleryTemplate'
wp option delete 'optionImagineDefaultAlbumTemplate'
wp option delete 'optionImagineDefaultImageTemplate'
wp option delete 'optionImagineDefaultLayoverTemplate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imagine'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imagine'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imagine'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imagine'"
