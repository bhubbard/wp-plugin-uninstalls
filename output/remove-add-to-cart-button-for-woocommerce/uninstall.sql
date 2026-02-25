-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ratcw_disable_cart_page', 'ratcw_disable_checkout_page', 'ratcw_add_to_cart_message_text_color', 'ratcw_add_to_cart_message_background_color', 'ratcw_add_to_cart_message_text_alignment', 'ratcw_add_to_cart_message_text_padding', 'ratcw_add_to_cart_message_text_font_size', 'ratcw_login_reg_page_url', 'woocommerce_myaccount_page_id', 'ratcw_login_reg_button_text', 'ratcw_price_message_text_color', 'ratcw_price_message_background_color', 'ratcw_price_message_text_alignment', 'ratcw_price_message_text_padding', 'ratcw_price_message_text_font_size', 'ratcw_cart_checkout_redirect_url', 'ratcw_product_ofs_message', 'ratcw_product_obo_message', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ratcw_remove_cart_button_for', 'ratcw_show_login_btn_when_cart_button_hidden', 'ratcw_msg_instead_cart_button', 'ratcw_hide_price', 'ratcw_msg_instead_product_price', 'ratcw_show_price_on', 'ratcw_igne_noti');
DELETE FROM wp_usermeta WHERE meta_key IN ('ratcw_remove_cart_button_for', 'ratcw_show_login_btn_when_cart_button_hidden', 'ratcw_msg_instead_cart_button', 'ratcw_hide_price', 'ratcw_msg_instead_product_price', 'ratcw_show_price_on', 'ratcw_igne_noti');
DELETE FROM wp_termmeta WHERE meta_key IN ('ratcw_remove_cart_button_for', 'ratcw_show_login_btn_when_cart_button_hidden', 'ratcw_msg_instead_cart_button', 'ratcw_hide_price', 'ratcw_msg_instead_product_price', 'ratcw_show_price_on', 'ratcw_igne_noti');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ratcw_remove_cart_button_for', 'ratcw_show_login_btn_when_cart_button_hidden', 'ratcw_msg_instead_cart_button', 'ratcw_hide_price', 'ratcw_msg_instead_product_price', 'ratcw_show_price_on', 'ratcw_igne_noti');

