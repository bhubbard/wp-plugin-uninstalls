#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppdfi_settings'
wp option delete 'wppdfi_version'
wp option delete 'wppdfi_db_version'
wp option delete 'wppdfi_network_settings'

# Delete Transients
wp transient delete 'wppdfi_activated'
wp transient delete 'wppdfi_metadata'
wp transient delete 'wppdfi_api_cache'
wp transient delete 'wppdfi_health_cache'
wp transient delete 'wppdfi_rating_cache'
wp transient delete 'wppdfi_activation_notice'
wp transient delete 'wppdfi_deactivated'
wp transient delete 'wppdfi_uninstall_backup'

# Clear Cron Jobs
wp cron event delete 'wppdfi_cleanup'
wp cron event delete 'wppdfi_warm_cache'

