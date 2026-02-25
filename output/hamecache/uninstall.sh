#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hamecache_%'"
wp option delete 'hamecache_post_types'
wp option delete 'hamecache_extra_pages'
wp option delete 'rewrite_rules'

