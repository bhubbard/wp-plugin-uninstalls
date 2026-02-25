-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ttt_pnwc_opt_enable', 'ttt_pnwc_opt_hide_error_enable', 'ttt_pnwc_opt_hide_success_enable', 'ttt_pnwc_opt_hide_info_enable', 'ttt_pnwc_opt_allowed_device_types', 'ttt_pnwc_opt_click_inside_close', 'ttt_pnwc_opt_type_error_enable', 'ttt_pnwc_opt_type_info_enable', 'ttt_pnwc_opt_type_success_enable', 'ttt_pnwc_opt_ajax', 'ttt_pnwc_opt_ignore_msg_field', 'ttt_pnwc_opt_ignore_search_method', 'ttt_pnwc_opt_ignore_msg_regex_f', 'ttt_pnwc_opt_prevent_closing_if_clicking_out', 'ttt_pnwc_opt_audio_enable', 'ttt_pnwc_opt_micromodal_load_method');

