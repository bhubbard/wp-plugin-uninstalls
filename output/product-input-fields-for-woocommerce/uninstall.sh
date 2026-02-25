#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ts_reset_tracking'"
wp option delete 'alg_wc_pif_global_total_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_enabled_global_%'"
wp option delete 'alg_wc_pif_enabled'
wp option delete 'alg_wc_pif_frontend_position'
wp option delete 'alg_wc_pif_frontend_position_priority'
wp option delete 'alg_wc_pif_frontend_before'
wp option delete 'alg_wc_pif_frontend_template'
wp option delete 'alg_wc_pif_frontend_after'
wp option delete 'alg_wc_pif_frontend_required_html'
wp option delete 'alg_wc_pif_frontend_required_js'
wp option delete 'alg_wc_pif_frontend_order_table_format'
wp option delete 'alg_wc_pif_frontend_refill'
wp option delete 'alg_wc_pif_frontend_smart_textarea'
wp option delete 'alg_wc_pif_frontend_textarea_auto_height'
wp option delete 'alg_wc_pif_frontend_enqueue_timepicker_style'
wp option delete 'alg_wc_pif_frontend_enqueue_datepicker_style'
wp option delete 'alg_wc_pif_attach_to_admin_new_order'
wp option delete 'alg_wc_pif_attach_to_customer_processing_order'
wp option delete 'alg_wc_pif_local_enabled'
wp option delete 'alg_wc_pif_local_total_number_default'
wp option delete 'alg_wc_pif_global_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_required_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_title_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_placeholder_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_default_value_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_class_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_style_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_required_message_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_input_restrictions_min_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_input_restrictions_max_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_input_restrictions_step_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_input_restrictions_maxlength_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_input_restrictions_pattern_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_checkbox_yes_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_checkbox_no_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_file_accept_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_file_wrong_type_msg_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_file_max_size_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_file_max_size_msg_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_format_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_mindate_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_maxdate_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_addyear_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_yearrange_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_datepicker_firstday_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_timepicker_format_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_timepicker_interval_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_type_color_allow_typing_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_pif_select_radio_option_type_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp option delete 'ts_tracker_last_send'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_local_total_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_local_total_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_local_total_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_local_total_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pif_local'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pif_local'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pif_local'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pif_local'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_pif_global'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_pif_global'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_pif_global'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_pif_global'"
