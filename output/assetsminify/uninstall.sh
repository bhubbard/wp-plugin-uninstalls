#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'am_sass_path'
wp option delete 'am_use_compass'
wp option delete 'am_compass_path'
wp option delete 'am_coffeescript_path'
wp option delete 'am_async_flag'
wp option delete 'am_dev_mode'
wp option delete 'am_files_to_exclude'
wp option delete 'am_compress_styles'
wp option delete 'am_compress_scripts'
wp option delete 'am_log'

