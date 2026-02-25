#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trackmage_client_id'
wp option delete 'trackmage_client_secret'
wp option delete 'trackmage_workspace'
wp option delete 'trackmage_sync_statuses'
wp option delete 'trackmage_sync_start_date'
wp option delete 'trackmage_trigger_sync'
wp option delete 'trackmage_delete_data'
wp option delete 'reset_plugin_settings'
wp option delete 'trackmage_integration'
wp option delete 'trackmage_webhook'
wp option delete 'trackmage_team'
wp option delete 'trackmage_webhook_username'
wp option delete 'trackmage_webhook_password'
wp option delete 'trackmage_order_status_aliases'
wp option delete 'trackmage_custom_order_statuses'
wp option delete 'trackmage_modified_order_statuses'

# Delete Transients
wp transient delete 'trackmage-wizard-notice'
wp transient delete 'trackmage_error'
wp transient delete 'trackmage-remove-integration-error'
wp transient delete 'trackmage_error_shown'
wp transient delete 'trackmage_workspaces'
wp transient delete 'trackmage_carriers'
wp transient delete 'trackmage_order_statuses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackmage_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackmage_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackmage_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackmage_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trackmage_carrier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trackmage_carrier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trackmage_carrier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trackmage_carrier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trackmage_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trackmage_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trackmage_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trackmage_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackmage_tracking_page_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackmage_tracking_page_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackmage_tracking_page_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackmage_tracking_page_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trackmage_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trackmage_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trackmage_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trackmage_hash'"
