#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brtg_post_type'
wp option delete 'brtg_bot_token'
wp option delete 'brtg_telegram_channels'
wp option delete 'brtg_msg_web_preview'
wp option delete 'brtg_msg_tpl'
wp option delete 'brtg_auto_send'
wp option delete 'brtg_delete_options'
wp option delete 'brtg_author'
wp option delete 'auto_send'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brtg_targetSent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brtg_targetSent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brtg_targetSent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brtg_targetSent'"
