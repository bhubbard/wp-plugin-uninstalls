-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crestawhatsappchat_settings', 'woocommerce_shop_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_get_cresta_whatsapp_chat_plugin');
DELETE FROM wp_usermeta WHERE meta_key IN ('_get_cresta_whatsapp_chat_plugin');
DELETE FROM wp_termmeta WHERE meta_key IN ('_get_cresta_whatsapp_chat_plugin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_get_cresta_whatsapp_chat_plugin');

