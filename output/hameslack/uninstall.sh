#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hameslack_pending_review_channel'
wp option delete 'hameslack_slash_signing_secret'
wp option delete 'hameslack_slash_messages'
wp option delete 'hameslack_active_addons'
wp option delete 'hameslack_invitation_channel'
wp option delete 'hameslack_payload_url'
wp option delete 'hameslack_invite_api_token'
wp option delete 'hameslack_outgoing'
wp option delete 'hameslack_bot_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hameslack_last_requested'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hameslack_last_requested'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hameslack_last_requested'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hameslack_last_requested'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hameslack_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hameslack_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hameslack_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hameslack_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hameslack_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hameslack_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hameslack_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hameslack_token'"
