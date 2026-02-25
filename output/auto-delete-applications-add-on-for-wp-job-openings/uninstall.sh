#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awsm_jobs_adl_general_settings'
wp option delete 'awsm_jobs_adl_register_default_settings'

# Clear Cron Jobs
wp cron event delete 'awsm_jobs_adl_applications'

