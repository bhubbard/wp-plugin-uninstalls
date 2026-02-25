#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'author_base'
wp option delete 'vases_settings'
wp option delete 'vases_http_auth_send_mail'

# Clear Cron Jobs
wp cron event delete 'vases_http_auth_send_mail'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vases_http_auth_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vases_http_auth_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vases_http_auth_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vases_http_auth_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vases_http_auth_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vases_http_auth_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vases_http_auth_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vases_http_auth_pass'"
