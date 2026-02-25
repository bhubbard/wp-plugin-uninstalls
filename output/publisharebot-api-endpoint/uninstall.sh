#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushbot_api_suffix'
wp option delete 'pushbot_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tg_msg_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tg_msg_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tg_msg_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tg_msg_id'"
