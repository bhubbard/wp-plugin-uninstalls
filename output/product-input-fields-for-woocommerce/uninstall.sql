-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version', 'alg_wc_pif_global_total_number', 'alg_wc_pif_enabled', 'alg_wc_pif_frontend_position', 'alg_wc_pif_frontend_position_priority', 'alg_wc_pif_frontend_before', 'alg_wc_pif_frontend_template', 'alg_wc_pif_frontend_after', 'alg_wc_pif_frontend_required_html', 'alg_wc_pif_frontend_required_js', 'alg_wc_pif_frontend_order_table_format', 'alg_wc_pif_frontend_refill', 'alg_wc_pif_frontend_smart_textarea', 'alg_wc_pif_frontend_textarea_auto_height', 'alg_wc_pif_frontend_enqueue_timepicker_style', 'alg_wc_pif_frontend_enqueue_datepicker_style', 'alg_wc_pif_attach_to_admin_new_order', 'alg_wc_pif_attach_to_customer_processing_order', 'alg_wc_pif_local_enabled', 'alg_wc_pif_local_total_number_default', 'alg_wc_pif_global_enabled', 'ts_tracker_last_send', 'woocommerce_store_city', 'woocommerce_default_country', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_ts_reset_tracking';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_enabled_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_required_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_title_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_placeholder_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_default_value_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_class_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_style_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_required_message_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_input_restrictions_min_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_input_restrictions_max_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_input_restrictions_step_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_input_restrictions_maxlength_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_input_restrictions_pattern_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_checkbox_yes_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_checkbox_no_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_file_accept_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_file_wrong_type_msg_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_file_max_size_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_file_max_size_msg_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_format_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_mindate_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_maxdate_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_addyear_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_yearrange_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_firstday_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_timepicker_format_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_timepicker_interval_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_color_allow_typing_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_select_radio_option_type_global_%';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_alg_wc_pif_local', '_alg_wc_pif_global');
DELETE FROM wp_usermeta WHERE meta_key IN ('_alg_wc_pif_local', '_alg_wc_pif_global');
DELETE FROM wp_termmeta WHERE meta_key IN ('_alg_wc_pif_local', '_alg_wc_pif_global');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_alg_wc_pif_local', '_alg_wc_pif_global');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_local_total_number';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_local_total_number';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_local_total_number';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_local_total_number';

