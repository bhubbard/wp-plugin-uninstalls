#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nginx_cache_path'
wp option delete 'nginx_auto_purge'

