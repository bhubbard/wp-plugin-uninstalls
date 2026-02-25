#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scfw_speed_test_options'

# Clear Cron Jobs
wp cron event delete 'scfw_run_api_cron'

