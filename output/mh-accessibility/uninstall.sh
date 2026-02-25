#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mhacc_install_time'
wp option delete 'mhacc_settings'
wp option delete 'mhacc_widget_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mhacc_widget_theme_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mhacc_widget_theme_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mhacc_widget_theme_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mhacc_widget_theme_mode'"
