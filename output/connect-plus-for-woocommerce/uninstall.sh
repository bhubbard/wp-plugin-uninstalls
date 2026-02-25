#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'olivery_connect_auto_send'
wp option delete 'olivery_connect_token'
wp option delete 'olivery_connect_status_map'
wp option delete 'olivery_add_connect_sequence_note'
wp option delete 'olivery_add_delivery_sequence_note'
wp option delete 'olivery_connect_field_mapping'
wp option delete 'olivery_connect_paid_methods'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_olivery_connect_sequence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_olivery_connect_sequence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_olivery_connect_sequence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_olivery_connect_sequence'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_sequence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_sequence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_sequence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_sequence'"
