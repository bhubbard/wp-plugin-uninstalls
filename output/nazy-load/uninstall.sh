#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flying_images_cdn_exclude_keywords'
wp option delete 'flying_images_lazymethod'
wp option delete 'flying_images_exclude_keywords'
wp option delete 'flying_images_enable_cdn'
wp option delete 'flying_images_enable_lazyloading'
wp option delete 'flying_images_enable_responsive_images'
wp option delete 'flying_images_enable_compression'
wp option delete 'flying_images_quality'
wp option delete 'FLYING_IMAGES_VERSION'
wp option delete 'flying_images_margin'
wp option delete 'active_sitewide_plugins'

