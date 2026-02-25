#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_authUsername'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_authPassword'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_projectSlug'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issueType'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_day'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_emailTo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secondEmail'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_flowEndpoint'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_iftttEndpoint'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_zapEndpoint'"
wp option delete 'current_theme'
wp option delete 'ua_db_version'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'update_alerts_refresh'

