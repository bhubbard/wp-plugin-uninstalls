#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'SL_framework_options'
wp option delete 'plugin_error_on_activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'update_message_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'update_message_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'update_message_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'update_message_text'"
