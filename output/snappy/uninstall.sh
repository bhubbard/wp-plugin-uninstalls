#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snappy_cache_hits'
wp option delete 'snappy_cache_misses'
wp option delete 'snappy_settings'

