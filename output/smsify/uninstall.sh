#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smsify-api-key'
wp option delete 'smsify_integrations'
wp option delete 'smsify_webhooks'
wp option delete 'user-group-meta'
wp option delete 'smsify_enable_sender_id_override'
wp option delete 'smsify-enable-sender-id-override'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smsify_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smsify_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smsify_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smsify_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smsify_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smsify_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smsify_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smsify_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smsify_sender_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smsify_sender_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smsify_sender_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smsify_sender_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smsify-track-optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smsify-track-optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smsify-track-optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smsify-track-optin'"
