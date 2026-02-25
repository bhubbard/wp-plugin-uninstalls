#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_background_color'
wp option delete 'fs_background_opacity'
wp option delete 'fs_loader_scale'
wp option delete 'fs_wc_compat'
wp option delete 'fs_loader_img'
wp option delete 'fs_template'
wp option delete 'fs_exclude_urls'
wp option delete 'fs_exclude_params'

