#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmandrill'
wp option delete 'wpmandrill-test'
wp option delete 'wpmandrill_notice_shown'
wp option delete 'wpmandrill-stats'
wp option delete 'dashboard_widget_options'
wp option delete 'sewm_activated_on'

# Delete Transients
wp transient delete 'wpmandrill-stats'
wp transient delete 'mandrill-stats'

# Clear Cron Jobs
wp cron event delete 'wpm_update_stats'

