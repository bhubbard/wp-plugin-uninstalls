#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rao_firebase_user_credentials'
wp option delete 'rao_chat_admin_display_name'
wp option delete 'rao_chat_admin'
wp option delete 'rao_chat_frontend_status'
wp option delete 'raopress_chat_admin_pro_license'
wp option delete 'raopress_chat_admin_pro_status'
wp option delete 'firebase-chat-settings'

# Delete Transients
wp transient delete 'rao_auth_error'
wp transient delete 'rao_firebase_global_error'
wp transient delete 'rao_login_error'
wp transient delete 'raopress_chat_pro_notice_display'
wp transient delete 'rao_firebase_app_config_error'
wp transient delete 'rao_firebase_db_config_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chat_id'"
