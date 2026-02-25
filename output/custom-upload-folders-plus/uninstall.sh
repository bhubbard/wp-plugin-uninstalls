#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwcuf_select'
wp option delete 'jwcuf_default_folder_name'
wp option delete 'jwcuf_file_types'
wp option delete 'jwcuf_user_folder_name'
wp option delete 'jwcuf_uploads_use_yearmonth_folders'
wp option delete 'jwcuf_use_blogname_folders'

