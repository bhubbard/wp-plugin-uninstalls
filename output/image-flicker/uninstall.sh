#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image_flicker_num_images'
wp option delete 'image_flicker_delay'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'image_flicker_link_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'image_flicker_src_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'image_flicker_desc_%'"

