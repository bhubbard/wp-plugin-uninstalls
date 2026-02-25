-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twc_option_butt', 'twc_option_img_cite', 'twc_option_show_cite', 'twc_option_butt_txt', 'twc_option_TXT_comm_h2', 'twc_option_TXT_comm_form_h2', 'twc_option_TXT_comm_no_comm', 'twc_option_TXT_comm_textarea', 'twc_option_TXT_comm_input1', 'twc_option_TXT_comm_input2');

