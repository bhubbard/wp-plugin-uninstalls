-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wprcf_email', 'wprcf_subject', 'wprcf_success_msg', 'wprcf_yourname_txt', 'wprcf_email_txt', 'wprcf_website_txt', 'wprcf_message_txt', 'wprcf_required_txt', 'wprcf_spamcheck_txt', 'wprcf_spamcheck1_txt', 'wprcf_spamcheck2_txt', 'wprcf_spamcheck3_txt', 'wprcf_sendbtn_txt', 'wprcf_show_event_tracking', 'wprcf_event_cat', 'wprcf_event_value', 'wprcf_show_spamcheck', 'wprcf_bootstrap_option', 'wprcf_form_class', 'wprcf_input_row_class', 'wprcf_label_class', 'wprcf_input_col_class', 'wprcf_input_class', 'wprcf_button_place_class', 'wprcf_button_class', 'wprcf_textarea_row', 'wprcf_intro_msg', 'wprcf_ending_msg', 'wprcf_phone_txt');

