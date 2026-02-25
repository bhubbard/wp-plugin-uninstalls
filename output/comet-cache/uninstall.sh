#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comet_cache_mbstring_deprecated_warning_bypass'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_when_logged_in_was_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_errors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apc_warning_bypass'"
wp option delete 'zencache_options'
wp option delete 'zencache_errors'
wp option delete 'zencache_notices'
wp option delete 'dm_no_primary_domain'

# Delete Transients
wp transient delete 'doing_cron'

# Clear Cron Jobs
wp cron event delete '_cron_zencache_auto_cache'
wp cron event delete '_cron_zencache_cleanup'

