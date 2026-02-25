#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slwsu_is_active_grouper'
wp option delete 'slwsu_lazyload_post_gallery_grouper'
wp option delete 'slwsu_lazyload_post_gallery_delete_options'
wp option delete 'slwsu_lazyload_post_gallery_add_gallery_title'
wp option delete 'slwsu_lazyload_post_gallery_add_carousel_title'
wp option delete 'slwsu_lazyload_post_gallery_add_carousel_caption'
wp option delete 'slwsu_lazyload_post_gallery_add_carousel_description'
wp option delete 'slwsu_lazyload_post_gallery_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'slwsu_lazyload_post_gallery_%'"

# Delete Transients
wp transient delete 'slwsu_lazyload_post_gallery_options'

