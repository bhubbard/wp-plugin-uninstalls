#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'carousel_enable_it'
wp option delete 'carousel_display_exif'
wp option delete 'carousel_display_geo'
wp option delete 'comments_display'
wp option delete 'fullsize_display'
wp option delete 'carousel_background_color'
wp option delete 'tiled_galleries'

