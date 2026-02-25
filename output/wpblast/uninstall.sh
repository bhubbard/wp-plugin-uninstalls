#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WpFastestCacheExclude'
wp option delete 'WpFastestCache'
wp option delete 'wpblast_plugin_version'
wp option delete 'wpblast_db_version'
wp option delete 'wpblast_home'
wp option delete 'wpblast_crawler'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_firstActivation' OR option_name LIKE '_site_transient_%_firstActivation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_plugindata' OR option_name LIKE '_site_transient_%_plugindata'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_autoregexp' OR option_name LIKE '_site_transient_%_autoregexp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_user' OR option_name LIKE '_site_transient_%_user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_purgeExceededItemsCacheTimestamp' OR option_name LIKE '_site_transient_%_purgeExceededItemsCacheTimestamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cleanExpiredCacheTimestamp' OR option_name LIKE '_site_transient_%_cleanExpiredCacheTimestamp'"

