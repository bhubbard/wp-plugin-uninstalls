#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ts__dataMessage'
wp option delete 'telsender_wc_ids'
wp option delete 'ts_event_login_failed'
wp option delete 'ts_event_token'
wp option delete 'ts_event_login_failed_chat_id'
wp option delete 'ts_event_login_success'
wp option delete 'ts_event_login_success_chat_id'
wp option delete 'ts_event_interception_post_chat_id'
wp option delete 'ts_event_interception_post_value'
wp option delete 'ts_event_interception_post_param'
wp option delete 'ts_event_utm'
wp option delete 'ts_event_utm_chat_id'
wp option delete 'ts_event_utm_list_param'
wp option delete 'ts_event_utm_list_value'
wp option delete 'ts_event_interception_post'
wp option delete 'ts_event_interception_list_value'
wp option delete 'ts_event_interception_list_title'
wp option delete 'ts_event_interception_list_param'
wp option delete 'ts_event_wc_add_to_cart'
wp option delete 'ts_event_wc_add_to_cart_chat_id'
wp option delete 'ts_event_bots'
wp option delete 'otherbots'
wp option delete 'ts_event_bot_list_value'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'telsIsm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'telsIsm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'telsIsm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'telsIsm'"
