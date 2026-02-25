#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storebird_api_key'
wp option delete 'storebird_secret_key'
wp option delete 'storebird_enabled'
wp option delete 'storebird_admin_only'
wp option delete 'storebird_connected_via'
wp option delete 'storebird_last_sync'
wp option delete 'storebird_product_count'
wp option delete 'storebird_version'
wp option delete 'storebird_api_url'
wp option delete 'storebird_dashboard_url'

# Delete Transients
wp transient delete 'storebird_connection_verified'
wp transient delete 'storebird_connect_message'
wp transient delete 'storebird_widget_config'
wp transient delete 'storebird_sync_lock'
wp transient delete 'storebird_sync_progress'
wp transient delete 'storebird_sync_products'
wp transient delete 'storebird_sync_product_ids'
wp transient delete 'storebird_sync_count'
wp transient delete 'storebird_pending_connect'
wp transient delete 'storebird_auto_connect_cooldown'
wp transient delete 'storebird_redirect_after_connect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_estimated_delivery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_estimated_delivery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_estimated_delivery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_estimated_delivery'"
