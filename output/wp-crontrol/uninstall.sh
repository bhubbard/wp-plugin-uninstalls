#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crontrol_schedules'

# Delete Transients
wp transient delete 'doing_cron'
wp transient delete 'crontrol-cron-test-ok'

