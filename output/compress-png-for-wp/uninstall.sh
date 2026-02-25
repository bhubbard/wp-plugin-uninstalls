#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gd_tiny_png_auto_shrink'
wp option delete 'gd_tiny_png_sizes_option'
wp option delete 'gd_tiny_png_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

