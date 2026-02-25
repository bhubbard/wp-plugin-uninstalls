#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yetix_request__last_token_connection_subdomain'
wp option delete 'yetix_request__version'
wp option delete 'yetix_request__activation_trigger'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yetix_request__zendesk_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yetix_request__zendesk_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yetix_request__zendesk_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yetix_request__zendesk_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yetix_request__zendesk_user_oauth_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yetix_request__zendesk_user_oauth_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yetix_request__zendesk_user_oauth_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yetix_request__zendesk_user_oauth_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yetix_request__zendesk_user_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yetix_request__zendesk_user_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yetix_request__zendesk_user_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yetix_request__zendesk_user_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yetix_request__zendesk_user_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yetix_request__zendesk_user_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yetix_request__zendesk_user_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yetix_request__zendesk_user_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yetix_request__zendesk_user_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yetix_request__zendesk_user_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yetix_request__zendesk_user_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yetix_request__zendesk_user_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yetix_request__wordpress_user_last_connexion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yetix_request__wordpress_user_last_connexion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yetix_request__wordpress_user_last_connexion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yetix_request__wordpress_user_last_connexion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
