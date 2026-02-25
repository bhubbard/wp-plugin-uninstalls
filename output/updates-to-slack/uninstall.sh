#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_slackurls'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sitename'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_nextruntime_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_nextruntime_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_frequency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ignore_plugins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ignore_themes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lastrundt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lastrundata'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_option_name'"
wp option delete 'cron'
wp option delete '_site_transient_update_core'
wp option delete '_site_transient_update_plugins'
wp option delete '_site_transient_update_themes'
wp option delete 'updates2slack_lastrundt'
wp option delete 'updates2slack_lastrundata'

