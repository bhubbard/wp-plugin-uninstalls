#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssp_stats_version'
wp option delete 'ssp_stats_show_crawler_update_notice'
wp option delete 'ssp_stats_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'active_sitewide_plugins'
wp option delete 'ssp_version'

