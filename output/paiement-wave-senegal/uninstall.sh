#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pw_wave_license_key'
wp option delete 'pw_wave_license_status'
wp option delete 'pw_wave_license_last_check'
wp option delete 'pw_wave_trial_started'
wp option delete 'pw_wave_trial_end'
wp option delete 'pw_wave_license_data'

# Clear Cron Jobs
wp cron event delete 'pw_wave_license_check_event'

