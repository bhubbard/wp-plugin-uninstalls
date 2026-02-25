#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_shortify_show_frontend'
wp option delete 'wp_shortify_auth_token'
wp option delete 'wp_shortify_token'
wp option delete 'wp_shortify_ex_posts'
wp option delete 'wp_shortify_show_posts_clicks'
wp option delete 'wp_shortify_admin_access'
wp option delete 'wp_shortify_plugin_name'
wp option delete 'wp_shortify_client_id'
wp option delete 'wp_shortify_client_secret'
wp option delete 'wp_shortify_api_key'
wp option delete 'wp_shortify_google_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'short_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'short_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'short_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'short_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'short_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'short_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'short_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'short_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'short_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'short_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'short_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'short_status'"
