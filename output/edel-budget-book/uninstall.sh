#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ebb-type-lists'
wp option delete 'ebb-logout-message'
wp option delete 'ebb-disable-message'
wp option delete 'ebb-basic-color'
wp option delete 'ebb-public-select'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebb-disable_user_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebb-disable_user_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebb-disable_user_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebb-disable_user_flag'"
