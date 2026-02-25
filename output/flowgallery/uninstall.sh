#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flowgallery_use_fancybox'
wp option delete 'flowgallery_use_wp_masonry'
wp option delete 'flowgallery_sorting'
wp option delete 'flowgallery_dropshadow'
wp option delete 'flowgallery_square'
wp option delete 'flowgallery_resample'
wp option delete 'flowgallery_padding'

