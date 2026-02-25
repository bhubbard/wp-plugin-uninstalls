#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qcldichartcovidAL'
wp option delete 'qcldichartcovidCC'
wp option delete 'qcldichartcovidUS'
wp option delete 'qcldichartcovidCH'
wp option delete 'setUpd'
wp option delete 'qcldcovid19_options'

# Clear Cron Jobs
wp cron event delete 'wp_schedule_event'

