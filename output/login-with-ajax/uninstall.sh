#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lwa_data'
wp option delete 'lwa_admin_notices'
wp option delete 'lwa_pro_api_key'
wp option delete 'lwa_notification_override'
wp option delete 'lwa_version'
wp option delete 'lwa_transport_responses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lwa_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lwa_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lwa_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lwa_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lwa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lwa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lwa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lwa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lwa_passkeys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lwa_passkeys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lwa_passkeys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lwa_passkeys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lwa_passkey_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lwa_passkey_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lwa_passkey_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lwa_passkey_id'"
