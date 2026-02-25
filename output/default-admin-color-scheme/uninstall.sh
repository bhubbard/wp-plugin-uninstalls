#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_default_admin_color_scheme'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plugin_default_admin_color_scheme_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plugin_default_admin_color_scheme_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plugin_default_admin_color_scheme_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plugin_default_admin_color_scheme_override'"
