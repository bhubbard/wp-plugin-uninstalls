-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webpushr_private_key', 'webpushr_auth_token', 'webpushr_public_key', 'wpp_enable_for_post', 'wpp_default_for_post', 'wpp_default_for_post_update', 'wpp_post_message', 'wpp_post_title', 'wpp_post_type', 'wpp_auto_hide', 'wpp_post_image', 'wpp_post_icon', 'wpp_post_sendTo', 'wpp_disable_prompt_code', 'webpushr_enable_woo_new_prod', 'webpushr_woo_new_prod_title', 'webpushr_woo_new_prod_message', 'webpushr_woo_prod_icon', 'webpushr_woo_prod_image', 'webpushr_woo_prod_url', 'webpushr_woo_price_drop_title', 'webpushr_woo_price_drop_message', 'webpushr_woo_price_drop_icon', 'webpushr_woo_price_drop_image', 'webpushr_woo_price_drop_url', 'webpushr_woo_sale_title', 'webpushr_woo_sale_message', 'webpushr_woo_sale_icon', 'webpushr_woo_sale_image', 'webpushr_woo_sale_url', 'webpushr_enable_abandoned_cart', 'webpushr_woo_abandoned_cart_title', 'webpushr_woo_abandoned_cart_message', 'webpushr_woo_abandoned_cart_icon', 'webpushr_woo_abandoned_cart_image', 'webpushr_woo_abandoned_cart_url', 'webpushr_woo_abandoned_cart_frequency', 'webpushr_woo_abandoned_cart_interval', 'wpp_utm_parameter', 'webpushr_woo_price_drop_show', 'webpushr_woo_sale_price_show', 'woocommerce_currency', 'webpushr_notification_sent');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpp_send_notification_for_new_post', 'webpushr_notification_title', 'webpushr_notification_body', 'webpushr_notification_preview', 'webpushr_segment');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpp_send_notification_for_new_post', 'webpushr_notification_title', 'webpushr_notification_body', 'webpushr_notification_preview', 'webpushr_segment');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpp_send_notification_for_new_post', 'webpushr_notification_title', 'webpushr_notification_body', 'webpushr_notification_preview', 'webpushr_segment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpp_send_notification_for_new_post', 'webpushr_notification_title', 'webpushr_notification_body', 'webpushr_notification_preview', 'webpushr_segment');

