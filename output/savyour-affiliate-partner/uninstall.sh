#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'savap_auth_secret'
wp option delete 'savap_secret_work'
wp option delete 'savap_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'savap-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'savap-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'savap-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'savap-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'savyour_cancellation_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'savyour_cancellation_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'savyour_cancellation_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'savyour_cancellation_reason'"
