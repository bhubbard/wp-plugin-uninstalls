#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'warcraft_news_rewrite_items'
wp option delete 'warcraft_news_global_cache_time'
wp option delete 'warcraft_news_wowhead'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'warcraft_news_%'"
wp option delete 'global_cache_time'

