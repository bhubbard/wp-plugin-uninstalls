#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_inbox_messages'
wp option delete 'wp_inbox_gplus_api'
wp option delete 'wpinbox_options'
wp option delete 'wp_inbox_live_chat_settings'
wp option delete 'wp_inbox_admin_msg'
wp option delete 'wp_inbox_admin_msg_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_staff'"
wp option delete 'active_sitewide_plugins'
wp option delete 'pages_layout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mail_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mail_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mail_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mail_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_inbox_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_inbox_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_inbox_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_inbox_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tlms_ustatus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tlms_ustatus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tlms_ustatus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tlms_ustatus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tlms_astatus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tlms_astatus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tlms_astatus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tlms_astatus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_unread_status_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_unread_status_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_unread_status_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_unread_status_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_inbox_read_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_inbox_read_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_inbox_read_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_inbox_read_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_address'"
