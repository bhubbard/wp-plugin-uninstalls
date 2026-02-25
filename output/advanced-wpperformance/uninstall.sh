#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awpp-option'
wp option delete 'awpp-settings'
wp option delete 'awpp_serverpush_files'

# Clear Cron Jobs
wp cron event delete 'awpp_renew_htaccess_cron'
wp cron event delete 'awpp_monitoring_sheduled_psi_request'

