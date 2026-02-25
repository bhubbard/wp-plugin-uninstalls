#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_cat_enable%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_pro_cat%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_disable_gift_pack_images%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_disable_gift_pack_note%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_disable_gift_pack_to%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_disable_gift_pack_from%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_note_require%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_to_require%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_from_require%'"
wp option delete 'gpfw_cat_enable'
wp option delete 'gpfw_pro_cat'
wp option delete 'gpfw_disable_gift_pack_images'
wp option delete 'gpfw_disable_gift_pack_note'
wp option delete 'gpfw_disable_gift_pack_to'
wp option delete 'gpfw_disable_gift_pack_from'
wp option delete 'gpfw_gift_pack_note_require'
wp option delete 'gpfw_gift_pack_to_require'
wp option delete 'gpfw_gift_pack_from_require'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_global_price%'"
wp option delete 'gpfw_global_price'
wp option delete 'gpfw_gift_price'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_message_text%'"
wp option delete 'gpfw_gift_pack_message_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_message_text_to%'"
wp option delete 'gpfw_gift_pack_message_text_to'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_message_text_from%'"
wp option delete 'gpfw_gift_pack_message_text_from'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_image_text%'"
wp option delete 'gpfw_gift_pack_image_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gift_wrap_text%'"
wp option delete 'gift_wrap_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_note_placeholder%'"
wp option delete 'gpfw_gift_pack_note_placeholder'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_to_placeholder%'"
wp option delete 'gpfw_gift_pack_to_placeholder'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_from_placeholder%'"
wp option delete 'gpfw_gift_pack_from_placeholder'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_wrap_text_label%'"
wp option delete 'gpfw_gift_wrap_text_label'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_choose_gift_pack_img%'"
wp option delete 'gpfw_choose_gift_pack_img'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_choose_gift_pack_msg%'"
wp option delete 'gpfw_choose_gift_pack_msg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_bg_img%'"
wp option delete 'gpfw_gift_pack_bg_img'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_bg_color%'"
wp option delete 'gpfw_gift_pack_bg_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_giftwrap_base_gift_title_color%'"
wp option delete 'gpfw_giftwrap_base_gift_title_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_add_gift_pack_label_color%'"
wp option delete 'gpfw_add_gift_pack_label_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_add_gift_pack_price_and_checkbox%'"
wp option delete 'gpfw_add_gift_pack_price_and_checkbox'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gallery%'"
wp option delete 'gpfw_gallery'
wp option delete 'gpfw_options'
wp option delete 'gpfw_enable_gift_pack_note_limit'
wp option delete 'gpfw_choose_gift_limit'
wp option delete 'gpfw_popup_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gift_pack_wrapper_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gift_pack_wrapper_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gift_pack_wrapper_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gift_pack_wrapper_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
