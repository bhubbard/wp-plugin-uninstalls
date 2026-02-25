#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auth_key'
wp option delete 'si2flose_login_attempt'
wp option delete 'si2flose_incorrect_code_attempts'
wp option delete 'si2flose_enable_users'
wp option delete 'mfa_enable_users'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'si2flose_mfa_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'si2flose_mfa_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'si2flose_mfa_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'si2flose_mfa_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'si2flose_mfa_priv_key_64'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'si2flose_mfa_priv_key_64'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'si2flose_mfa_priv_key_64'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'si2flose_mfa_priv_key_64'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'si2flose_last_pws'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'si2flose_last_pws'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'si2flose_last_pws'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'si2flose_last_pws'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'si2flose_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'si2flose_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'si2flose_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'si2flose_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_login_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_login_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_login_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_login_nonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'si2flose_private_key_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'si2flose_private_key_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'si2flose_private_key_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'si2flose_private_key_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nonce_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nonce_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nonce_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nonce_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfa_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfa_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfa_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfa_last_login'"
