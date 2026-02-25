-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alertwise_post_page_settings', 'alertwise_settings', 'alertwise_activation_redirect', 'alertwise_localstorage_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_alertwise_auto_send', '_alertwise_custom_title', '_alertwise_custom_msg', '_alertwise_sent', '_alertwise_group_id', '_alertwise_action1_title', '_alertwise_action1_url', '_alertwise_action1_icon', '_alertwise_action2_title', '_alertwise_action2_url', '_alertwise_action2_icon', '_alertwise_show_action2', '_alertwise_resend_on_future_publish', 'aw_push_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_alertwise_auto_send', '_alertwise_custom_title', '_alertwise_custom_msg', '_alertwise_sent', '_alertwise_group_id', '_alertwise_action1_title', '_alertwise_action1_url', '_alertwise_action1_icon', '_alertwise_action2_title', '_alertwise_action2_url', '_alertwise_action2_icon', '_alertwise_show_action2', '_alertwise_resend_on_future_publish', 'aw_push_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_alertwise_auto_send', '_alertwise_custom_title', '_alertwise_custom_msg', '_alertwise_sent', '_alertwise_group_id', '_alertwise_action1_title', '_alertwise_action1_url', '_alertwise_action1_icon', '_alertwise_action2_title', '_alertwise_action2_url', '_alertwise_action2_icon', '_alertwise_show_action2', '_alertwise_resend_on_future_publish', 'aw_push_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_alertwise_auto_send', '_alertwise_custom_title', '_alertwise_custom_msg', '_alertwise_sent', '_alertwise_group_id', '_alertwise_action1_title', '_alertwise_action1_url', '_alertwise_action1_icon', '_alertwise_action2_title', '_alertwise_action2_url', '_alertwise_action2_icon', '_alertwise_show_action2', '_alertwise_resend_on_future_publish', 'aw_push_options');

