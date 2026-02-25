#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snapcache_object_cache'
wp option delete 'snapcache_memcached_servers'

