-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whatsapp_chat_page', 'whatsapp_chat_button', 'whatsapp_chat_powered_by', 'whatsapp_chat_round', 'whatsapp_chat_down', 'whatsapp_chat_left_side', 'whatsapp_chat_msg', 'whatsapp_chat_mobile', 'whatsapp_chat_hide_button', 'whatsapp_chat_hide_post', 'whatsapp_chat_hide_page', 'whatsapp_chat_dark', 'whatsapp_chat_white', 'qlwapp', 'jetpack_protect_active', 'jetpack_offline_mode', 'wpcom_public_coming_soon', 'woocommerce_shop_page_id', 'qlwapp_box', 'qlwapp_button', 'qlwapp_contacts', 'qlwapp_display', 'qlwapp_scheme', 'qlwapp_settings', 'qlwapp_woocommerce', 'jetpack_is_single_user', 'quadlayers_news_feed');
DELETE FROM wp_options WHERE option_name LIKE 'ql_plugin_feedback_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qlwapp-user-rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('qlwapp-user-rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('qlwapp-user-rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qlwapp-user-rating');

