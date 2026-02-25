#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tinypng_api_key'
wp option delete 'efctin_processed_images'
wp option delete 'efctin_log'
wp option delete 'efctin_log_ct'
wp option delete 'efctin_log_mb'
wp option delete 'efctin_days'
wp option delete 'efctin_target_folder'
wp option delete 'efctin_auto_hours'
wp option delete 'efctin_auto'

# Delete Transients
wp transient delete 'efctin_next_run'

