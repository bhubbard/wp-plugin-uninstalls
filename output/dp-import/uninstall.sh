#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dp_import_url'
wp option delete 'dp_import_verification_key'
wp option delete 'dp_import_cron_frequency'
wp option delete '_transient_timeout_dp_import_updating'
wp option delete 'dp_import_verified'

# Delete Transients
wp transient delete 'dp_import_errors'
wp transient delete 'dp_import_notice'
wp transient delete 'dp_import_updating'

# Clear Cron Jobs
wp cron event delete 'dp_import_update_data'

