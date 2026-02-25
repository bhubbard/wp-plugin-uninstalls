#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qwiz_options'
wp option delete 'qwiz_button_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qwizcards_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qwizcards_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qwizcards_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qwizcards_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qwizcards_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qwizcards_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qwizcards_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qwizcards_password'"
