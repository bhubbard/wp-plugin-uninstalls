#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selected_sizes'
wp option delete 'globally_active'
wp option delete 'rwp_added_filters'
wp option delete 'rwp_picturefill'
wp option delete 'rwp_retina'
wp option delete 'selected_element'
wp option delete 'ignored_image_formats'
wp option delete 'rwp_custom_media_queries'
wp option delete 'rwp_debug_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

