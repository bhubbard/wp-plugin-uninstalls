#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfe_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcf7_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcf7_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcf7_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcf7_hide_welcome_panel_on'"
