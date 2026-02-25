#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_options'
wp option delete 'carousel_enable_it'
wp option delete 'carousel_display_exif'
wp option delete 'carousel_display_geo'
wp option delete 'carousel_background_color'

