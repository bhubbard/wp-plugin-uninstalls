#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwtseau_jwt_auth_hass_type'
wp option delete 'jwtseau_jwt_auth_hass_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jwt_protect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jwt_protect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jwt_protect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jwt_protect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jwt_KeyPass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jwt_KeyPass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jwt_KeyPass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jwt_KeyPass'"
