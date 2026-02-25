#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nginxchampuru-cache_expires'
wp option delete 'nginxchampuru-enable_flush'
wp option delete 'nginxchampuru-cache_dir'
wp option delete 'nginxchampuru-cache_levels'
wp option delete 'nginxchampuru-publish'
wp option delete 'nginxchampuru-comment'
wp option delete 'nginxchampuru-add_last_modified'
wp option delete 'cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'nginxchampuru-%'"

# Delete Transients
wp transient delete 'nginxchampuru_flush'

