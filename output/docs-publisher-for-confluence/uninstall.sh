#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpfcrs_last_sync_time'
wp option delete 'dpfcrs_onboarding_completed'
wp option delete 'dpfcrs_sync'
wp option delete 'dpfcrs_connection'
wp option delete 'dpfcrs_spaces'
wp option delete 'dpfcrs_settings'

# Delete Transients
wp transient delete 'dpfcrs_activation_redirect'
wp transient delete 'dpfcrs_available_spaces'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dpfcrs_last_sync_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dpfcrs_last_sync_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dpfcrs_last_sync_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dpfcrs_last_sync_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dpfcrs_confluence_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dpfcrs_confluence_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dpfcrs_confluence_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dpfcrs_confluence_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dpfcrs_confluence_space_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dpfcrs_confluence_space_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dpfcrs_confluence_space_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dpfcrs_confluence_space_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dpfcrs_confluence_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dpfcrs_confluence_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dpfcrs_confluence_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dpfcrs_confluence_version'"
