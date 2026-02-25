#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sendBlogAlerts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sendBlogAlerts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sendBlogAlerts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sendBlogAlerts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roles_send_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roles_send_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roles_send_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roles_send_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'username_s'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'username_s'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'username_s'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'username_s'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'password_s'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'password_s'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'password_s'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'password_s'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sender_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sender_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sender_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sender_id'"
