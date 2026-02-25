#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chatway_user_identifier'
wp option delete 'chatway_token'
wp option delete 'chatway_redirection'
wp option delete 'chatway_api_secret_license_key'
wp option delete 'chatway_has_auth_error'
wp option delete 'chatway_wp_plugin_version'
wp option delete 'chatway_secret_key'
wp option delete 'chatway_user_cache_identifier'

# Delete Transients
wp transient delete 'chatway_unread_messages_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'chatway_status_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'chatway_status_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'chatway_status_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'chatway_status_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
