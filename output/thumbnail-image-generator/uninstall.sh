#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tgen_bg_colors'
wp option delete 'tgen_width'
wp option delete 'tgen_height'
wp option delete 'tgen_title_font_size'
wp option delete 'tgen_is_overlay_image'
wp option delete 'tgen_overlay_position'
wp option delete 'tgen_overlay_images'
wp option delete 'tgen_preview_image_url'
wp option delete 'tgen_settings'
wp option delete 'tgen_version'
wp option delete 'tgen_flash_notices'

