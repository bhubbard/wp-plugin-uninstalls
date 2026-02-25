#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmp_image_settings'
wp option delete 'wpmp_gallery_settings'
wp option delete 'wpmp_iframe_settings'
wp option delete 'wpmp_div_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

