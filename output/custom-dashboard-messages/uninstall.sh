#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_dash_roles'
wp option delete 'wp_dash_logo'
wp option delete 'wp_dash_logo_height'
wp option delete 'wp_dash_message'
wp option delete 'wp_dash_roles_normal'
wp option delete 'wp_dash_message_network'
wp option delete 'wp_remove_site_widgets'
wp option delete 'wp_remove_site_widgets_N'
wp option delete 'wp_remove_network_widgets'
wp option delete 'wp_remove_global_widgets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cd_min_role_to_see'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cd_min_role_to_see'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cd_min_role_to_see'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cd_min_role_to_see'"
