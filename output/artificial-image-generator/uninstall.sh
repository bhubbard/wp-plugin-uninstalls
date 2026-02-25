#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aimg_bg_colors'
wp option delete 'aimg_width'
wp option delete 'aimg_height'
wp option delete 'aimg_title_font_size'
wp option delete 'aimg_is_overlay_image'
wp option delete 'aimg_overlay_position'
wp option delete 'aimg_overlay_images'
wp option delete 'aimg_preview_image_url'
wp option delete 'aimg_settings'
wp option delete 'aimg_version'
wp option delete 'aimg_flash_notices'

