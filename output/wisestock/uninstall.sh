#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wisestock_options'
wp option delete 'wisestock_installation_completed'
wp option delete 'wisestock_activation_status'
wp option delete 'wisestock_activation_date'
wp option delete 'wisestock_activation_error'
wp option delete 'wisestock_db_version'
wp option delete 'wisestock_installation_date'
wp option delete 'wisestock_demo_data_version'

# Delete Transients
wp transient delete 'wisestock_all_suppliers'
wp transient delete 'wisestock_notifications_all'
wp transient delete 'wisestock_notifications_critical'
wp transient delete 'wisestock_notifications_warning'
wp transient delete 'wisestock_notifications_mild'
wp transient delete 'wisestock_velocity_cache'
wp transient delete 'wisestock_notifications_cache'
wp transient delete 'wisestock_suppliers_cache'

# Clear Cron Jobs
wp cron event delete 'wisestock_daily_calculations'
wp cron event delete 'wisestock_notification_check'
wp cron event delete 'wisestock_hourly_notifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wisestock_default_supplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wisestock_default_supplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wisestock_default_supplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wisestock_default_supplier'"
