#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcfwp_get_all_unused_images'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

