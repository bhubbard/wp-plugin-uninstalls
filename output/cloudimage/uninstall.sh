#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cloudimage_new_version'
wp option delete 'cloudimage'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'cloudimage_token_cname'
wp option delete 'cloudimage_use_origin_url'
wp option delete 'cloudimage_lazy_loading'
wp option delete 'cloudimage_ignore_svg'
wp option delete 'cloudimage_prevent_image_upsize'
wp option delete 'cloudimage_image_quality'
wp option delete 'cloudimage_maximum_pixel_ratio'
wp option delete 'cloudimage_remove_v7'
wp option delete 'cloudimage_image_size_attributes'
wp option delete 'cloudimage_custom_function'
wp option delete 'cloudimage_custom_library'
wp option delete 'cloudimage_skip_classes'
wp option delete 'cloudimage_skip_files'
wp option delete 'cloudimage_local_javascript_libraries'
wp option delete 'cloudimage_standard_mode'
wp option delete 'cloudimage_url_signature'
wp option delete 'cloudimage_enable_srcset'
wp option delete 'cloudimage_srcset_widths'

