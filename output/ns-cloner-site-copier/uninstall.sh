#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ns_cloner_finish_queries'
wp option delete 'ns_cloner_exited'
wp option delete 'ns-media-source-site-url'
wp option delete 'ns_cloner_saved_request'
wp option delete 'ns_cloner_installed_version'
wp option delete 'illegal_names'
wp option delete 'registration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_primary_keys'"
wp option delete 'ns_cloner_default_template'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'ns_cloner_cron'

