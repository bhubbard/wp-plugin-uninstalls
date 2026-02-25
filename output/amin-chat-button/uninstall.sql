-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amin_chat_button_plugin_enabled', 'amin_chat_button_plugin_enabled_together', 'amin_chat_button_plugin_phone_en', 'amin_chat_button_plugin_phone_tr', 'amin_chat_button_plugin_phone', 'amin_chat_button_plugin_phone_link_en', 'amin_chat_button_plugin_phone_link_tr', 'amin_chat_button_plugin_phone_link', 'amin_chat_button_plugin_text', 'amin_chat_button_plugin_text_en', 'amin_chat_button_plugin_text_en_loc', 'amin_chat_button_plugin_text_tr', 'amin_chat_button_plugin_text_tr_loc', 'amin_chat_button_plugin_position', 'amin_chat_button_tag_select', 'amin_chat_button_msg_select', 'amin_chat_button_plugin_target_id', 'amin_chat_button_plugin_gtag_report', 'amin_chat_button_plugin_yametrik_id', 'amin_chat_button_plugin_yametrik_account', 'amin_chat_button_plugin_prohibited_urls', 'amin_chat_button_plugin_pulsation');

