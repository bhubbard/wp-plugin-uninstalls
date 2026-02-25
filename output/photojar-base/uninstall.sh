#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pj_cache_path'
wp option delete 'pj_cache_url'
wp option delete 'pj_insert_image'
wp option delete 'pj_linkto'
wp option delete 'pj_linkto_single'
wp option delete 'pj_viewer'
wp option delete 'pj_gallery_columns'
wp option delete 'pj_gallery_size'
wp option delete 'pj_jpeg_quality'
wp option delete 'pj_custom_width'
wp option delete 'pj_custom_height'
wp option delete 'pj_custom_crop'
wp option delete 'pj_resize_full'
wp option delete 'pj_full_width'
wp option delete 'pj_full_height'
wp option delete 'pj_custom_class'
wp option delete 'pj_custom_rel'

