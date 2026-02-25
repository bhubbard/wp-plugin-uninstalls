#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gb_browser_resize_quality'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gb_browser_resize_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'large_size_%'"
wp option delete 'gb_browser_resize_width'
wp option delete 'gb_browser_resize_height'

