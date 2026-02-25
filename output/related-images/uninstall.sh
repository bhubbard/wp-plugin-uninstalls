#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'related_images_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_related_images'"

