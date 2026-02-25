#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fl_builder_settings'
wp option delete 'microthemer_activation'
wp option delete 'microthemer_autoload_preferences'
wp option delete 'preferences_themer_loader'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_body_classes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_body_classes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_body_classes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_body_classes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
