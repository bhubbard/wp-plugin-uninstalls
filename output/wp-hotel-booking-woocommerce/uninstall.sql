-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tax_total_display', 'woocommerce_tax_display_shop', 'woocommerce_tax_round_at_subtotal', 'woocommerce_tax_display_cart');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hb_wc_booking_id', '_hb_woo_order_id', '_hb_total', '_hb_currency', '_hb_woo_tax_total', '_hb_tax', 'tp_hb_extra_room_respondent', '_hb_num_of_rooms', 'tp_hb_extra_room_required');
DELETE FROM wp_usermeta WHERE meta_key IN ('hb_wc_booking_id', '_hb_woo_order_id', '_hb_total', '_hb_currency', '_hb_woo_tax_total', '_hb_tax', 'tp_hb_extra_room_respondent', '_hb_num_of_rooms', 'tp_hb_extra_room_required');
DELETE FROM wp_termmeta WHERE meta_key IN ('hb_wc_booking_id', '_hb_woo_order_id', '_hb_total', '_hb_currency', '_hb_woo_tax_total', '_hb_tax', 'tp_hb_extra_room_respondent', '_hb_num_of_rooms', 'tp_hb_extra_room_required');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hb_wc_booking_id', '_hb_woo_order_id', '_hb_total', '_hb_currency', '_hb_woo_tax_total', '_hb_tax', 'tp_hb_extra_room_respondent', '_hb_num_of_rooms', 'tp_hb_extra_room_required');

