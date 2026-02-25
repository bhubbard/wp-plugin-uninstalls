#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prevent_browser_caching_options'
wp option delete 'prevent_browser_caching_clear_cache_time'

