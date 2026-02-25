#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_sitemap_custom_css'
wp option delete 'easy_sitemap_cache_enabled'
wp option delete 'easy_sitemap_cache_expiry'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_sitemap_%'"

