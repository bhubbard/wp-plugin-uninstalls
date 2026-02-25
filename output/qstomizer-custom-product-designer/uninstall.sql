-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qsmz_shop_url', 'qsmz_category_shop', 'qsmz_category_hide', 'qsmz_mostrar_img', 'qsmz_tamano_img_width', 'qsmz_tamano_img_height', 'qsmz_private_key', 'qsmz_public_key', 'qsmz_settings', 'qsmz_activacion_msg', 'qsmz_getCNX', 'qsmz_myplugin_options', 'qsmz_permitir_imagenes', 'qsmz_permitir_png', 'qsmz_store_id', 'qsmz_store_key', 'qsmz_user_id', 'qsmz_user_key', 'qsmz_user_login', 'qsmz_user_password', 'qsmz_wp_key', 'qstomizer_license_key', 'qstomizer_license_status', 'qstomizer_version', 'qsmz_ignore_promo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_qsmz_product', '_qsmz_img_front', '_qsmz_img_back', '_thumbnail_id', '_qsmz_mbe_costume', '_qsmz_order_id', '_qsmz_key_order', 'qsmz_ignore_promo');
DELETE FROM wp_usermeta WHERE meta_key IN ('_qsmz_product', '_qsmz_img_front', '_qsmz_img_back', '_thumbnail_id', '_qsmz_mbe_costume', '_qsmz_order_id', '_qsmz_key_order', 'qsmz_ignore_promo');
DELETE FROM wp_termmeta WHERE meta_key IN ('_qsmz_product', '_qsmz_img_front', '_qsmz_img_back', '_thumbnail_id', '_qsmz_mbe_costume', '_qsmz_order_id', '_qsmz_key_order', 'qsmz_ignore_promo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_qsmz_product', '_qsmz_img_front', '_qsmz_img_back', '_thumbnail_id', '_qsmz_mbe_costume', '_qsmz_order_id', '_qsmz_key_order', 'qsmz_ignore_promo');

