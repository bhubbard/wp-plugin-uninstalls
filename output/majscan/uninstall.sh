#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'majscan_temp_messages'
wp option delete 'majscan_admin_accessible'
wp option delete 'majscan_plugins'
wp option delete 'majscan_themes'
wp option delete 'majscan_wordpress'
wp option delete 'majscan_vide'
wp option delete 'majscan_enable_cron'
wp option delete 'majscan_cron_frequency'
wp option delete 'majscan_email'
wp option delete 'majscan_admin'
wp option delete 'majscan_cron_last_execution'
wp option delete 'majscan_cron_last_source'
wp option delete 'majscan_temp_next_execution'
wp option delete 'majscan_last_error'

# Delete Transients
wp transient delete 'majscan_hosting_provider'
wp transient delete 'majscan_latest_php_version'
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'majscan_cron_check'
wp cron event delete 'majscan_cleanup_temp_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'majscan_last_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'majscan_last_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'majscan_last_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'majscan_last_notification'"
