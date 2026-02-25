#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sendimagesrss_image_size'
wp option delete 'displayfeaturedimagegenesis'
wp option delete 'itsec_ban_users'
wp option delete 'sendimagesrss'
wp option delete 'sendimagesrss_simplify_feed'
wp option delete 'sendimagesrss_alternate_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

