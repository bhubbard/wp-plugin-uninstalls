#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpintidp_settings'
wp option delete 'wpintidp_default_attribute_mappings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sso_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sso_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sso_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sso_user'"
