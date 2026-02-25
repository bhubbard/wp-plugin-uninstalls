#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp2d_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp2d_do_autopost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp2d_do_autopost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp2d_do_autopost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp2d_do_autopost'"
