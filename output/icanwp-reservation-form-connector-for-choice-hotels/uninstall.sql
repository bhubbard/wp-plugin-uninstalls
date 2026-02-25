-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ch_reservation_input_choicehotels_url', 'ch_reservation_select_style_option', 'ch_reservation_shortcode_text_widget', 'ch_reservation_check_disable_auto_checkout_select', 'ch_reservation_check_load_jquery', 'ch_reservation_check_load_jquery_datepicker', 'ch_reservation_check_load_jquery_spinner');

