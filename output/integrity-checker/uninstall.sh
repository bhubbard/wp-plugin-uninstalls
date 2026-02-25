#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apikey'"
wp option delete 'integrity-checker_apikey'
wp option delete 'integrity-checker_siteid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cron'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dbversion'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'wp_checksum_apikey'
wp option delete 'wp_checksum_siteid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_siteid'"
wp option delete 'integrity_checker_scheduledrun'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'integrity-checker_accesslevel'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_accesslevel' OR option_name LIKE '_site_transient_%_accesslevel'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tt_teststate_%' OR option_name LIKE '_site_transient_tt_teststate_%'"

