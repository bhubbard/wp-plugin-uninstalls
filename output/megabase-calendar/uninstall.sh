#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'megacal_options'
wp option delete 'megacal_hidden_options'
wp option delete 'megacal_execution_id_store'
wp option delete 'megacal_processing_errors'

# Delete Transients
wp transient delete 'megacal_do_rewrite_flush'

# Clear Cron Jobs
wp cron event delete 'megacal_check_event_processing_cron'
wp cron event delete 'megacal_clear_debug_log_cron'

