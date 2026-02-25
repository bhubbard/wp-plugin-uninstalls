#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'idx_broker_apikey'
wp option delete 'wpps_settings'
wp option delete 'anh_notices'

# Delete Transients
wp transient delete 'wpps_cron_example_timed_job'

# Clear Cron Jobs
wp cron event delete 'idxaddond_cron_mailchimp'

