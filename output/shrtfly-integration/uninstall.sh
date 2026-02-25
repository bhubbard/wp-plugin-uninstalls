#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled_stats'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled_amp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_include_exclude_domains_choose'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_include_exclude_domains_value'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ads_type'"

# Clear Cron Jobs
wp cron event delete 'shrtfly_cleanup_transients'

