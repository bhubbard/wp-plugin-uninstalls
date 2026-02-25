#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bfox-blog-options'
wp option delete 'bfox-ms-allow-blog-options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'bfox_blog_network_post_refresh'
wp option delete 'bfox_blog_post_refresh'
wp option delete 'bfox_bp_activity_refresh'
wp option delete 'bfox-enable-bible-directory'
wp option delete 'bfox_translations'

# Delete Transients
wp transient delete 'settings_errors'

