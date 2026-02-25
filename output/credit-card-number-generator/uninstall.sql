-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CCNG_DUMMY_CARD_status', 'CCNG_generate_btn_link_text', 'CCNG_generate_btn_txt_color', 'CCNG_generate_btn_link_color', 'CCNG_copy_btn_link_text', 'CCNG_cpy_btn_txt_color', 'CCNG_copy_btn_link_color', 'CCNG_validate_input_ph', 'CCNG_validate_btn_txt', 'CCNG_validate_btn_color', 'CCNG_validate_btn_bgcolor', 'ccng_activation_date');

