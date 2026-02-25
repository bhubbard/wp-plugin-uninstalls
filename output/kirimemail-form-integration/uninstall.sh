#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ke_wpform_api_username'
wp option delete 'ke_form_active'
wp option delete 'ke_wpform_api_token'
wp option delete 'ke-wp-version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kirimemail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kirimemail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kirimemail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kirimemail'"
