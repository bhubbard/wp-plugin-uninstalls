#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkcreator_plugin_activated'
wp option delete 'linkcreator_api_token'
wp option delete 'meta_keywords'
wp option delete 'linkcreator_api_key'
wp option delete 'linkcreator_api_status'
wp option delete 'linkcreator_first_activation'
wp option delete 'linkcreator_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkcreator_app_password_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkcreator_app_password_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkcreator_app_password_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkcreator_app_password_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkcreator_app_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkcreator_app_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkcreator_app_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkcreator_app_password'"
