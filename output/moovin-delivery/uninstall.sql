-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'sg_del_address_card_title', 'sg_del_address_card_btn_text', 'sg_del_enable_address_picker', 'sg_del_default_lat', 'sg_del_default_long', 'sg_del_allow_user_location', 'sg_del_add_enable_unnamed_error', 'sg_del_add_unnamed_error', 'sg_del_add_title_error', 'sg_del_address_cards_column', 'sg_del_address_custom_styles', 'sg_del_add_new_address_card_btn_text', 'sg_del_add_new_address_form_title', 'sg_del_add_new_address_form_btn_text', 'sg_del_address_type_placeholder', 'sg_del_add_title', 'sg_del_show_address_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('delivery_latitude', 'delivery_longitude', 'delivery_address', 'estimation_id', 'package_id', 'moovin_qr');
DELETE FROM wp_usermeta WHERE meta_key IN ('delivery_latitude', 'delivery_longitude', 'delivery_address', 'estimation_id', 'package_id', 'moovin_qr');
DELETE FROM wp_termmeta WHERE meta_key IN ('delivery_latitude', 'delivery_longitude', 'delivery_address', 'estimation_id', 'package_id', 'moovin_qr');
DELETE FROM wp_commentmeta WHERE meta_key IN ('delivery_latitude', 'delivery_longitude', 'delivery_address', 'estimation_id', 'package_id', 'moovin_qr');

