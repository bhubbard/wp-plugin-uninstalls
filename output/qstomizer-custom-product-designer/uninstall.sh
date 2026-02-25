#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qsmz_shop_url'
wp option delete 'qsmz_category_shop'
wp option delete 'qsmz_category_hide'
wp option delete 'qsmz_mostrar_img'
wp option delete 'qsmz_tamano_img_width'
wp option delete 'qsmz_tamano_img_height'
wp option delete 'qsmz_private_key'
wp option delete 'qsmz_public_key'
wp option delete 'qsmz_settings'
wp option delete 'qsmz_activacion_msg'
wp option delete 'qsmz_getCNX'
wp option delete 'qsmz_myplugin_options'
wp option delete 'qsmz_permitir_imagenes'
wp option delete 'qsmz_permitir_png'
wp option delete 'qsmz_store_id'
wp option delete 'qsmz_store_key'
wp option delete 'qsmz_user_id'
wp option delete 'qsmz_user_key'
wp option delete 'qsmz_user_login'
wp option delete 'qsmz_user_password'
wp option delete 'qsmz_wp_key'
wp option delete 'qstomizer_license_key'
wp option delete 'qstomizer_license_status'
wp option delete 'qstomizer_version'
wp option delete 'qsmz_ignore_promo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qsmz_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qsmz_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qsmz_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qsmz_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qsmz_img_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qsmz_img_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qsmz_img_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qsmz_img_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qsmz_img_back'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qsmz_img_back'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qsmz_img_back'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qsmz_img_back'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qsmz_mbe_costume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qsmz_mbe_costume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qsmz_mbe_costume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qsmz_mbe_costume'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qsmz_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qsmz_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qsmz_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qsmz_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qsmz_key_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qsmz_key_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qsmz_key_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qsmz_key_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qsmz_ignore_promo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qsmz_ignore_promo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qsmz_ignore_promo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qsmz_ignore_promo'"
