#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_swiper_settings'
wp option delete 'wdevs_gallery_swiper_theme_color'
wp option delete 'wdevs_gallery_swiper_scrollbar'
wp option delete 'wdevs_gallery_swiper_pagination'
wp option delete 'wdevs_gallery_swiper_navigation'
wp option delete 'wdevs_gallery_swiper_breakpoint'
wp option delete 'wdevs_gallery_swiper_hover_enabled'
wp option delete 'wdevs_gallery_swiper_variation_images'

