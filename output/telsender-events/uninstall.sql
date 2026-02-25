-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ts_event_login_failed', 'ts_event_token', 'ts_event_login_failed_chat_id', 'ts_event_login_success', 'ts_event_login_success_chat_id', 'ts_event_interception_post_chat_id', 'ts_event_interception_post_value', 'ts_event_interception_post_param', 'ts_event_utm', 'ts_event_utm_chat_id', 'ts_event_utm_list_param', 'ts_event_utm_list_value', 'ts_event_interception_post', 'ts_event_interception_list_value', 'ts_event_interception_list_title', 'ts_event_interception_list_param', 'ts_event_wc_add_to_cart', 'ts_event_wc_add_to_cart_chat_id', 'ts_event_bots', 'otherbots', 'ts_event_bot_list_value');

