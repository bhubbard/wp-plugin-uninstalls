#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'air-quality-mk_options'
wp option delete 'air_quality_mk_db_version'

# Clear Cron Jobs
wp cron event delete 'air_quality_mk_new_measurement_event'

