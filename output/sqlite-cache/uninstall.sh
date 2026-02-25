#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'litecache_path'
wp option delete 'litecache_multisite'
wp option delete 'litecache_domain'
wp option delete 'litecache_purge'

