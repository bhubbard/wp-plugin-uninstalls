#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssi_debug_mode'
wp option delete 'ssi_debug_app_secret'
wp option delete 'ssi_debug_widget_name'
wp option delete 'ssi_app_secret'
wp option delete 'ssi_widget_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ssi_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ssi_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ssi_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ssi_uid'"
