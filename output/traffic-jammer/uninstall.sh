#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_traffic_jammer_abuseipdb'
wp option delete 'wp_traffic_jammer_options'
wp option delete 'wp_traffic_jammer_blocklist'
wp option delete ' wp_traffic_jammer_blocklist'
wp option delete ' wp_traffic_jammer_whitelist'
wp option delete 'wp_traffic_jammer_whitelist'
wp option delete ' wp_traffic_jammer_user_agents'
wp option delete 'wp_traffic_jammer_user_agents'
wp option delete 'trafficjammer_db_version'

# Clear Cron Jobs
wp cron event delete 'trafficjammer_cron_hook'

