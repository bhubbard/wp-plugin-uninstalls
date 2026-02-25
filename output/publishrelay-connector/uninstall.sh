#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'publishrelay_connector_activation_redirect'
wp option delete 'publishrelay_connector_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_publishrelay_sync_enqueued_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_publishrelay_sync_enqueued_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_publishrelay_sync_enqueued_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_publishrelay_sync_enqueued_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_publishrelay_update_enqueued_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_publishrelay_update_enqueued_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_publishrelay_update_enqueued_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_publishrelay_update_enqueued_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_publishrelay_sync_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_publishrelay_sync_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_publishrelay_sync_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_publishrelay_sync_attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_publishrelay_synced_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_publishrelay_synced_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_publishrelay_synced_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_publishrelay_synced_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_publishrelay_sync_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_publishrelay_sync_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_publishrelay_sync_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_publishrelay_sync_error'"
