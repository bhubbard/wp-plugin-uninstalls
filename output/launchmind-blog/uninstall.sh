#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'launchmind_blog_api_base'
wp option delete 'launchmind_blog_api_key'
wp option delete 'launchmind_blog_site_id'
wp option delete 'launchmind_blog_cache_ttl'
wp option delete 'launchmind_blog_base_path'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'launchmind_blog_%'"

