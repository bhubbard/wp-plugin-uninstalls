#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mbtng_path'
wp option delete 'mbtng_url'
wp option delete 'mbtng_wordpress_page'
wp option delete 'mbtng_redirect_login'
wp option delete 'mbtng_integrate_logins'
wp option delete 'mbtng_globalvars'
wp option delete 'mbtng_timestamp'
wp option delete 'mbtng_url_to_admin'
wp option delete 'mbtng_use_wordpress_homepage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tng_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tng_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tng_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tng_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_capabilities'"
