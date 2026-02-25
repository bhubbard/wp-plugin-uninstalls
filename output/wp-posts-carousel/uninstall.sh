#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-posts-carousel_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

