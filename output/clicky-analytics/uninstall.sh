#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cawp_got_updated'
wp option delete 'cawp_options'
wp option delete 'cawp_version'
wp option delete 'ca_sitekey'
wp option delete 'ca_siteid'
wp option delete 'ca_track_email'
wp option delete 'ca_track_username'
wp option delete 'ca_track_youtube'
wp option delete 'ca_track_html5'
wp option delete 'ca_tracking'
wp option delete 'ca_access'
wp option delete 'ca_disabledashboard'
wp option delete 'ca_frontend'
wp option delete 'ca_track_olp'
wp option delete 'ca_pgd'
wp option delete 'ca_rd'
wp option delete 'ca_sd'
wp option delete 'cawp_network_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_cawp_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_cawp_cache_timeout_%'"

# Clear Cron Jobs
wp cron event delete 'cawp_expired_cache_hook'

