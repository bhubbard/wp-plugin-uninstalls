#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpa_total_logins'
wp option delete 'wpa_login_request_error'
wp option delete 'wppb_general_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpa_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpa_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpa_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpa_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expiration'"
