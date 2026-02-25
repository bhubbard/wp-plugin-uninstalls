#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'almefy-api-key'
wp option delete 'almefy-api-secret'
wp option delete 'almefy-api-enabled'
wp option delete 'almefy-api-redirect'
wp option delete 'almefy-connect-in-login'
wp option delete 'almefy-session-timeout'
wp option delete 'almefy_plugin_version'
wp option delete 'almefy-mail-connect-on-register'
wp option delete 'almefy-redirect-wizard'
wp option delete 'almefy-mail-disable-welcome'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'created_by_almefy_console'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'created_by_almefy_console'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'created_by_almefy_console'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'created_by_almefy_console'"
