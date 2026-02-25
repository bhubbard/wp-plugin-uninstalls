#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcp_post_type_settings'
wp option delete 'wpcp_content_protection_msg'
wp option delete 'wpcp_wrongpass_msg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcp_isprotection_userroles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcp_isprotection_userroles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcp_isprotection_userroles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcp_isprotection_userroles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcp_isprotection_loggedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcp_isprotection_loggedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcp_isprotection_loggedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcp_isprotection_loggedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcp_isprotection_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcp_isprotection_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcp_isprotection_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcp_isprotection_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcp_isprotection_passvalue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcp_isprotection_passvalue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcp_isprotection_passvalue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcp_isprotection_passvalue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_content'"
