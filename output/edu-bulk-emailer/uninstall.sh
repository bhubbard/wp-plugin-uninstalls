#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edubzl_delete_data_on_uninstall'
wp option delete 'edubzl_notes'
wp option delete 'edubzl_logs'
wp option delete 'edubzl_batch_size'
wp option delete 'edubzl_batch_interval'
wp option delete 'edubzl_max_attempts'
wp option delete 'edubzl_queue_enabled'
wp option delete 'edubzl_cleanup_queue_days'
wp option delete 'edubzl_test_mode'

# Delete Transients
wp transient delete 'edubzl_last_job_id'
wp transient delete 'edubzl_cron_processing'

# Clear Cron Jobs
wp cron event delete 'edubzl_cleanup_job'

