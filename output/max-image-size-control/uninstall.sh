#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'max_image_size_control_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'medium_crop'
wp option delete 'large_crop'

