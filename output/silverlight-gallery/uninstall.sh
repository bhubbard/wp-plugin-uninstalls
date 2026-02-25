#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slgallery_standard_width'
wp option delete 'slgallery_standard_height'
wp option delete 'slgallery_standard_leftarrow'
wp option delete 'slgallery_standard_rightarrow'
wp option delete 'slgallery_standard_pagenumbers'
wp option delete 'slgallery_standard_thumbnails'
wp option delete 'slgallery_standard_preloader'
wp option delete 'slgallery_standard_fill'
wp option delete 'slgallery_standard_bgColor'
wp option delete 'slgallery_standard_bgMode'
wp option delete 'slgallery_standard_version'
wp option delete 'slgallery_alternate_text'

