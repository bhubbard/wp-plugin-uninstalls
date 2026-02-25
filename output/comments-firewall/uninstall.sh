#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comments_firewall_options'
wp option delete 'comments_firewall_version'
wp option delete 'comments_firewall_activated'
wp option delete 'wpcs_stats'
wp option delete 'wpcs_last_stats_commit'

# Delete Transients
wp transient delete 'wpcs_pending_stats'

# Clear Cron Jobs
wp cron event delete 'wpcs_monthly_stats_commit'

