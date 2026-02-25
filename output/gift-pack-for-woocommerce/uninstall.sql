-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gpfw_cat_enable', 'gpfw_pro_cat', 'gpfw_disable_gift_pack_images', 'gpfw_disable_gift_pack_note', 'gpfw_disable_gift_pack_to', 'gpfw_disable_gift_pack_from', 'gpfw_gift_pack_note_require', 'gpfw_gift_pack_to_require', 'gpfw_gift_pack_from_require', 'gpfw_global_price', 'gpfw_gift_price', 'gpfw_gift_pack_message_text', 'gpfw_gift_pack_message_text_to', 'gpfw_gift_pack_message_text_from', 'gpfw_gift_pack_image_text', 'gift_wrap_text', 'gpfw_gift_pack_note_placeholder', 'gpfw_gift_pack_to_placeholder', 'gpfw_gift_pack_from_placeholder', 'gpfw_gift_wrap_text_label', 'gpfw_choose_gift_pack_img', 'gpfw_choose_gift_pack_msg', 'gpfw_gift_pack_bg_img', 'gpfw_gift_pack_bg_color', 'gpfw_giftwrap_base_gift_title_color', 'gpfw_add_gift_pack_label_color', 'gpfw_add_gift_pack_price_and_checkbox', 'gpfw_gallery', 'gpfw_options', 'gpfw_enable_gift_pack_note_limit', 'gpfw_choose_gift_limit', 'gpfw_popup_option');
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_cat_enable%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_pro_cat%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_disable_gift_pack_images%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_disable_gift_pack_note%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_disable_gift_pack_to%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_disable_gift_pack_from%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_note_require%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_to_require%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_from_require%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_global_price%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_message_text%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_message_text_to%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_message_text_from%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_image_text%';
DELETE FROM wp_options WHERE option_name LIKE 'gift_wrap_text%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_note_placeholder%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_to_placeholder%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_from_placeholder%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_wrap_text_label%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_choose_gift_pack_img%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_choose_gift_pack_msg%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_bg_img%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gift_pack_bg_color%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_giftwrap_base_gift_title_color%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_add_gift_pack_label_color%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_add_gift_pack_price_and_checkbox%';
DELETE FROM wp_options WHERE option_name LIKE 'gpfw_gallery%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gift_pack_wrapper_price', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('gift_pack_wrapper_price', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('gift_pack_wrapper_price', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gift_pack_wrapper_price', '_wp_attachment_image_alt');

