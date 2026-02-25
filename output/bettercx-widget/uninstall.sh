#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bettercx_widget_settings'
wp option delete 'bettercx_widget_version'

# Delete Transients
wp transient delete 'bettercx_widget_cache'
wp transient delete 'bettercx_widget_connection_test'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bettercx_widget_user_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bettercx_widget_user_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bettercx_widget_user_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bettercx_widget_user_preferences'"
