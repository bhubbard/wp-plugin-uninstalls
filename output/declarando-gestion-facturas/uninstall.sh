#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'declarando_options'
wp option delete 'declarando_gestion_facturas_options'

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete 'declarando_gestion_facturas_update_data'

# Clear Cron Jobs
wp cron event delete 'declarando_sync_orders'
wp cron event delete 'declarando_cleanup_logs'
wp cron event delete 'declarando_check_updates'

