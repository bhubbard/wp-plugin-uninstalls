#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%install_wp_version'"
wp option delete 'assistant_cache_settings'
wp option delete 'wpa_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'template_editor_mce_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'template_editor_mce_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'template_editor_mce_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'template_editor_mce_hide'"
