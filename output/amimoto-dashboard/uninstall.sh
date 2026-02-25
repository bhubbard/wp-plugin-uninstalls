#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'c3_settings'
wp option delete 'nginxchampuru-cache_expires'
wp option delete 'nginxchampuru-cache_levels'
wp option delete 'nginxchampuru-cache_dir'
wp option delete 'nginxchampuru-comment'
wp option delete 'nginxchampuru-publish'
wp option delete 'nginxchampuru-enable_flush'

