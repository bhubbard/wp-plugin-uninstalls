#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fukurochat_assistant_uuid'
wp option delete 'fukurochat_bubble_text'
wp option delete 'fukurochat_target_id'
wp option delete 'fukurochat_position'
wp option delete 'fukurochat_offset_horizontal'
wp option delete 'fukurochat_offset_vertical'
wp option delete 'fukurochat_sync_enabled'
wp option delete 'fukurochat_api_secret'
wp option delete 'fukurochat_credentials_valid'
wp option delete 'fukurochat_assistant_name'

# Delete Transients
wp transient delete 'fukurochat_last_sync_result'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fukurochat_is_new'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fukurochat_is_new'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fukurochat_is_new'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fukurochat_is_new'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fukurochat_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fukurochat_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fukurochat_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fukurochat_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fukurochat_alternative_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fukurochat_alternative_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fukurochat_alternative_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fukurochat_alternative_products'"
