#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcj_onboarding_analytics'
wp option delete 'wcj_first_goal_applied'
wp option delete 'wcj_currency_EUR'
wp option delete 'wcj_currency_USD'
wp option delete 'wcj_sales_notifications_enabled'
wp option delete 'wcj_reviews_enabled'
wp option delete 'wcj_order_numbers_enabled'
wp option delete 'wcj_invoicing_invoice_enabled'
wp option delete 'wcj_product_addons_enabled'
wp option delete 'wcj_checkout_core_fields_enabled'
wp option delete 'wcj_coupon_by_user_role_enabled'
wp option delete 'wcj_currency_exchange_rates_enabled'
wp option delete 'wcj_product_input_fields_enabled'
wp option delete 'wcj_coupon_code_generator_enabled'
wp option delete 'wcj_export_enabled'
wp option delete 'wcj_call_for_price_make_all_empty'
wp option delete 'test_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_cart_custom_info_hook_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_cart_custom_info_priority_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_checkout_custom_field_checkbox_yes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_checkout_custom_field_checkbox_no_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_checkout_custom_field_label_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_checkout_custom_info_hook_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_checkout_custom_info_priority_%'"
wp option delete 'wcj_coupon_by_user_role_invalid_message'
wp option delete 'wcj_currency_exchange_rates_always_curl'
wp option delete 'wcj_currency_per_product_save_prices'
wp option delete 'wcj_currency_per_product_per_product'
wp option delete 'wcj_currency_per_product_cart_checkout'
wp option delete 'woocommerce_currency'
wp option delete 'wcj_currency_per_product_by_users_enabled'
wp option delete 'wcj_currency_per_product_by_user_roles_enabled'
wp option delete 'wcj_currency_per_product_by_product_cats_enabled'
wp option delete 'wcj_currency_per_product_by_product_tags_enabled'
wp option delete 'wcj_currency_per_product_total_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_currency_per_product_users_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_currency_per_product_currency_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_currency_per_product_user_roles_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_currency_per_product_product_cats_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_currency_per_product_product_tags_%'"
wp option delete 'wcj_currency_per_product_cart_checkout_leave_one_product'
wp option delete 'wcj_currency_per_product_cart_checkout_leave_same_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_currency_per_product_exchange_rate_%'"
wp option delete 'wcj_log'
wp option delete 'wcj_emails_verification_email_content'
wp option delete 'wcj_emails_verification_email_subject'
wp option delete 'wcj_emails_verification_email_template_wc_heading'
wp option delete 'wcj_emails_verification_failed_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_emails_custom_emails_admin_title_%'"
wp option delete 'wcj_empty_cart_position'
wp option delete 'wcj_empty_cart_checkout_position'
wp option delete 'wcj_eu_vat_number_not_valid_message'
wp option delete 'wcj_custom_roles'
wp option delete 'wcj_shipping_left_to_free_info_position_cart'
wp option delete 'wcj_shipping_left_to_free_info_priority_cart'
wp option delete 'wcj_shipping_left_to_free_info_position_mini_cart'
wp option delete 'wcj_shipping_left_to_free_info_priority_mini_cart'
wp option delete 'wcj_shipping_left_to_free_info_position_checkout'
wp option delete 'wcj_shipping_left_to_free_info_priority_checkout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_mini_cart_custom_info_hook_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_mini_cart_custom_info_priority_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_my_account_custom_info_hook_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_my_account_custom_info_priority_%'"
wp option delete 'wcj_my_account_registration_extra_fields_user_role_default'
wp option delete 'wcj_offer_price_button_position_priority'
wp option delete 'wcj_offer_price_button_position_priority_archives'
wp option delete 'wcj_offer_price_price_step'
wp option delete 'wcj_offer_price_min_price'
wp option delete 'wcj_offer_price_max_price'
wp option delete 'wcj_offer_price_default_price'
wp option delete 'wcj_offer_price_price_label'
wp option delete 'wcj_offer_price_form_header_template'
wp option delete 'wcj_offer_price_form_button_label'
wp option delete 'wcj_offer_price_button_label'
wp option delete 'wcj_order_minimum_amount_cart_notice_type'
wp option delete 'wcj_order_number_counter_previous_order_date'
wp option delete 'wcj_order_number_counter'
wp option delete 'wcj_order_bulk_regenerate_download_permissions_all_orders'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_gateways_by_shipping_enable_instance_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_gateways_by_shipping_enable_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_icon'"
wp option delete 'wcj_invoicing_desc_order_sequence'
wp option delete 'wcj_preorders_enable_products_include'
wp option delete 'wcj_preorders_email_notifications'
wp option delete 'wcj_preorders_hide_prices_guests'
wp option delete 'wcj_preorders_prevent_mixed_cart'
wp option delete 'wcj_preorders_auto_enable_outofstock'
wp option delete 'wcj_preorders_default_availability_days'
wp option delete 'wcj_preorders_default_price_type'
wp option delete 'wcj_preorders_default_price_adjustment'
wp option delete 'wcj_preorders_default_message'
wp option delete 'wcj_preorders_access_type'
wp option delete 'wcj_preorders_allowed_user_roles'
wp option delete 'wcj_preorders_button_text'
wp option delete 'wcj_preorders_fee_exclude_cats'
wp option delete 'wcj_preorders_fee_include_cats'
wp option delete 'wcj_preorders_fee_exclude_roles'
wp option delete 'wcj_preorders_fee_include_roles'
wp option delete 'wcj_preorders_global_fee_enabled'
wp option delete 'wcj_preorders_global_fee'
wp option delete 'wcj_preorders_global_fee_title'
wp option delete 'wcj_preorders_button_bg_color'
wp option delete 'wcj_preorders_button_text_color'
wp option delete 'wcj_preorders_button_hover_bg_color'
wp option delete 'wcj_preorders_button_hover_text_color'
wp option delete 'wcj_preorders_message'
wp option delete 'wcj_preorders_message_style'
wp option delete 'wcj_preorders_message_text_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_price_by_user_role_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_price_by_user_role_empty_price_%'"
wp option delete 'wcj_price_by_user_role_per_product_enabled'
wp option delete 'wcj_price_by_user_role_per_product_type'
wp option delete 'wcj_price_by_user_role_disable_for_products_on_sale'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_price_formats_currency_code_position_%'"
wp option delete 'wcj_product_add_to_cart_button_position_hook_loop'
wp option delete 'wcj_product_add_to_cart_button_position_loop'
wp option delete 'wcj_product_add_to_cart_button_position_hook_single'
wp option delete 'wcj_product_add_to_cart_button_position_single'
wp option delete 'wcj_product_by_date_unavailable_message_month_off'
wp option delete 'wcj_product_by_date_unavailable_message'
wp option delete 'wcj_product_by_time_unavailable_message_day_off'
wp option delete 'wcj_product_by_time_unavailable_message'
wp option delete 'wcj_user_product_email_send'
wp option delete 'wcj_product_listings_exclude_cats_on_shop'
wp option delete 'wcj_product_listings_exclude_cats_on_archives'
wp option delete 'woocommerce_category_archive_display'
wp option delete 'woocommerce_shop_page_display'
wp option delete 'wcj_product_open_price_messages_to_small'
wp option delete 'wcj_product_open_price_messages_to_big'
wp option delete 'wcj_product_open_price_frontend_template'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_custom_product_tabs_key_%'"
wp option delete 'wcj_product_variation_defualt_to_button'
wp option delete 'wcj_product_color_variation_item_width'
wp option delete 'wcj_product_color_variation_item_height'
wp option delete 'wcj_product_image_variation_item_width'
wp option delete 'wcj_product_image_variation_item_height'
wp option delete 'wcj_product_button_variation_item_width'
wp option delete 'wcj_product_button_variation_item_height'
wp option delete 'wcj_is_show_product_variation_lable'
wp option delete 'wcj_product_pvs_attr_display_style'
wp option delete 'wcj_products_per_page_select_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_create_products_xml_cron_time_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_products_time_file_created_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_shipping_by_order_amount_min_instance_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_shipping_by_order_amount_max_instance_%'"
wp option delete 'wcj_sku_hashids_salt_default'
wp option delete 'wcj_sku_number_generation_sequential'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_sku_counter_cat_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_sorting_default_sorting_%'"
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'wcj_stock_custom_stock_html'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'wcj_track_users_cron_time_schedule'
wp option delete 'wcj_track_users_cron_time_last_run'
wp option delete 'wcj_track_users_stats_by_country'
wp option delete 'wcj_track_users_by_country_widget_top_count'
wp option delete 'wcj_upgrade_block_clicks'
wp option delete 'wcj_wishlist_enabled_single'
wp option delete 'wcj_wishlist_hook_single'
wp option delete 'wcj_wishlist_page_url'
wp option delete 'wcj_wishlist_enabled_msg_fadeinout'
wp option delete 'wcj_wishlist_style_single'
wp option delete 'wcj_wishlist_title_single'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_numbering_counter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_numbering_template'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_format_custom_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_format_custom_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_orientation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_margin_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_margin_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_margin_right'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_image'"
wp option delete 'wcj_template_editor_templates_content'
wp option delete 'wcj_currency_exchange_rate_cron_time'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time'"
wp option delete 'woocommerce_custom_orders_table_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general_font_family'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_general_font_family_fallback'"
wp option delete 'wcj_invoicing_fonts_version_timestamp'
wp option delete 'wcj_invoicing_fonts_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_create_on'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_custom_payment_gateways_admin_title_%'"
wp option delete 'wcj_product_input_fields_field_template'
wp option delete 'wcj_pdf_invoicing_report_tool_filename'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_thankyou_page_template'"
wp option delete 'wcj_download_tcpdf_fonts_hook_timestamp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp option delete 'wcj_price_by_country_for_bots_disabled'
wp option delete 'wcj_price_by_country_customer_country_detection_method'
wp option delete 'wcj_price_by_country_admin_quick_edit_product_scope'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_price_by_country_exchange_rate_currency_group_%'"
wp option delete 'wcj_price_by_country_jquery_wselect_enabled'
wp option delete 'wcj_price_by_country_price_filter_widget_support_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_price_by_country_exchange_rate_group_%'"
wp option delete 'wcj_price_by_country_price_format_method'
wp option delete 'wcj_price_by_country_set_dft_checkout_billing_country'
wp option delete 'wcj_price_by_country_comp_woo_points_rewards'
wp option delete 'wcj_price_by_country_compatibility_free_shipping'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'wcj_price_by_country_make_pretty'
wp option delete 'wcj_price_by_country_local_enabled'
wp option delete 'wcj_price_by_country_ip_detection_method'
wp option delete 'woocommerce_default_country'
wp option delete 'wcj_price_by_country_revert'
wp option delete 'wcj_price_by_country_save_country_group_id'
wp option delete 'wcj_price_by_country_override_on_checkout_with_billing_country'
wp option delete 'wcj_price_by_country_override_scope'
wp option delete 'wcj_price_by_country_total_groups_number'
wp option delete 'wcj_price_by_country_selection'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_price_by_country_exchange_rate_countries_group_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_price_by_country_countries_group_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_price_by_country_countries_group_chosen_select_%'"
wp option delete 'wcj_price_by_country_rounding'
wp option delete 'wcj_price_by_country_make_pretty_min_amount_multiplier'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_price_by_country_make_empty_price_group_%'"
wp option delete 'wcj_price_by_country_compatibility_woo_discount_rules'
wp option delete 'wcj_price_by_country_save_prices'
wp option delete 'wcj_price_by_country_b2b_sale_price_group'
wp option delete 'wcj_reports_currency_rates'
wp option delete 'wcj_currency_custom_currency_total_number'
wp option delete 'wcj_template_editor_templates_by_path'
wp option delete 'wcj_wholesale_price_levels_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_wholesale_price_levels_number_%'"
wp option delete 'wcj_product_by_user_message_product_successfully_added'
wp option delete 'wcj_product_by_user_message_product_successfully_edited'
wp option delete 'wcj_wholesale_price_discount_type'
wp option delete 'wcj_orders_custom_statuses_array'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcj_orders_custom_status_icon_data_%'"
wp option delete 'wcj_plugin_activated_once'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_details_%'"
wp option delete 'wisdom_last_track_time'
wp option delete 'wisdom_allow_tracking'
wp option delete 'wisdom_notification_times'
wp option delete 'wisdom_block_notice'
wp option delete 'wisdom_collect_email'
wp option delete 'wisdom_admin_emails'

# Delete Transients
wp transient delete '_wcj_activation_redirect'
wp transient delete 'wcj_global_discount_sale_products'
wp transient delete 'wcj_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'wcj_cart_abandonment_update_order_status_action'
wp cron event delete 'wcj_track_users_generate_stats'
wp cron event delete 'wcj_version_updated'
wp cron event delete 'wcj_download_tcpdf_fonts_hook'
wp cron event delete 'put_do_weekly_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcj_getting_started_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcj_getting_started_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcj_getting_started_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcj_getting_started_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcj_recent_modules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcj_recent_modules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcj_recent_modules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcj_recent_modules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_add_to_cart_button_loop_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_add_to_cart_button_loop_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_add_to_cart_button_loop_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_add_to_cart_button_loop_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_add_to_cart_button_loop_disable_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_add_to_cart_button_loop_disable_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_add_to_cart_button_loop_disable_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_add_to_cart_button_loop_disable_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_add_to_cart_button_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_add_to_cart_button_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_add_to_cart_button_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_add_to_cart_button_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_add_to_cart_button_disable_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_add_to_cart_button_disable_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_add_to_cart_button_disable_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_add_to_cart_button_disable_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_checkout_files_total_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_checkout_files_total_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_checkout_files_total_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_checkout_files_total_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_checkout_files_upload_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_checkout_files_upload_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_checkout_files_upload_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_checkout_files_upload_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_checkout_files_upload_real_name_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_checkout_files_upload_real_name_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_checkout_files_upload_real_name_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_checkout_files_upload_real_name_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_coupon_by_user_role_invalid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_coupon_by_user_role_invalid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_coupon_by_user_role_invalid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_coupon_by_user_role_invalid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_crowdfunding_goal_sum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_crowdfunding_goal_sum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_crowdfunding_goal_sum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_crowdfunding_goal_sum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_crowdfunding_startdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_crowdfunding_startdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_crowdfunding_startdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_crowdfunding_startdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_crowdfunding_deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_crowdfunding_deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_crowdfunding_deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_crowdfunding_deadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_currency_per_product_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_currency_per_product_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_currency_per_product_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_currency_per_product_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tx_woocommerce_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tx_woocommerce_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tx_woocommerce_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tx_woocommerce_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_css_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_css_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_css_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_css_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcj_is_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcj_is_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcj_is_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcj_is_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcj_activation_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcj_activation_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcj_activation_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcj_activation_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_eu_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_eu_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_eu_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_eu_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_eu_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_eu_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_eu_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_eu_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_booster_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_booster_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_booster_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_booster_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_paypal_per_product_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_paypal_per_product_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_paypal_per_product_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_paypal_per_product_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_max_products_per_user_report'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_max_products_per_user_report'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_max_products_per_user_report'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_max_products_per_user_report'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_max_products_per_user_saved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_max_products_per_user_saved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_max_products_per_user_saved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_max_products_per_user_saved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_max_products_per_user_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_max_products_per_user_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_max_products_per_user_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_max_products_per_user_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_multicurrency_base_price_comp_pf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_multicurrency_base_price_comp_pf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_multicurrency_base_price_comp_pf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_multicurrency_base_price_comp_pf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_multicurrency_base_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_multicurrency_base_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_multicurrency_base_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_multicurrency_base_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_multicurrency_base_price_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_multicurrency_base_price_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_multicurrency_base_price_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_multicurrency_base_price_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_regular_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_regular_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_regular_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_regular_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_sale_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_sale_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_sale_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_sale_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_min_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_min_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_min_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_min_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_max_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_max_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_max_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_max_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_make_empty_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_make_empty_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_make_empty_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_multicurrency_per_product_make_empty_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_price_offers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_price_offers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_price_offers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_price_offers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_offer_price_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_offer_price_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_offer_price_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_offer_price_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_offer_price_price_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_offer_price_price_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_offer_price_price_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_offer_price_price_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_offer_price_min_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_offer_price_min_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_offer_price_min_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_offer_price_min_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_offer_price_max_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_offer_price_max_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_offer_price_max_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_offer_price_max_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_offer_price_default_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_offer_price_default_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_offer_price_default_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_offer_price_default_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_order_quantities_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_order_quantities_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_order_quantities_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_order_quantities_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_order_quantities_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_order_quantities_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_order_quantities_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_order_quantities_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_order_quantities_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_order_quantities_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_order_quantities_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_order_quantities_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_custom_payment_gateway_input_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_custom_payment_gateway_input_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_custom_payment_gateway_input_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_custom_payment_gateway_input_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_preorder_price_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_preorder_price_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_preorder_price_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_preorder_price_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_preorder_fixed_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_preorder_fixed_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_preorder_fixed_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_preorder_fixed_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_preorder_price_adjustment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_preorder_price_adjustment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_preorder_price_adjustment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_preorder_price_adjustment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_preorder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_preorder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_preorder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_preorder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_preorder_max_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_preorder_max_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_preorder_max_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_preorder_max_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_preorder_release_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_preorder_release_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_preorder_release_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_preorder_release_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_preorder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_preorder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_preorder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_preorder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_preorder_release_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_preorder_release_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_preorder_release_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_preorder_release_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_preorder_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_preorder_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_preorder_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_preorder_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_preorder_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_preorder_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_preorder_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_preorder_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_price_by_user_role_per_product_settings_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_price_by_user_role_per_product_settings_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_price_by_user_role_per_product_settings_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_price_by_user_role_per_product_settings_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_price_by_user_role_empty_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_price_by_user_role_empty_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_price_by_user_role_empty_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_price_by_user_role_empty_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_price_by_user_role_regular_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_price_by_user_role_regular_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_price_by_user_role_regular_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_price_by_user_role_regular_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_price_by_user_role_multiplier_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_price_by_user_role_multiplier_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_price_by_user_role_multiplier_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_price_by_user_role_multiplier_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_price_by_user_role_sale_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_price_by_user_role_sale_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_price_by_user_role_sale_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_price_by_user_role_sale_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_add_to_cart_button_ajax_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_add_to_cart_button_ajax_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_add_to_cart_button_ajax_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_add_to_cart_button_ajax_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_add_to_cart_button_loop_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_add_to_cart_button_loop_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_add_to_cart_button_loop_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_add_to_cart_button_loop_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_add_to_cart_redirect_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_add_to_cart_redirect_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_add_to_cart_redirect_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_add_to_cart_redirect_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_add_to_cart_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_add_to_cart_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_add_to_cart_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_add_to_cart_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_add_to_cart_on_visit_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_add_to_cart_on_visit_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_add_to_cart_on_visit_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_add_to_cart_on_visit_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_addons_qty_reduced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_addons_qty_reduced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_addons_qty_reduced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_addons_qty_reduced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcj_product_addons_per_product_qty_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcj_product_addons_per_product_qty_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcj_product_addons_per_product_qty_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcj_product_addons_per_product_qty_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_addons_per_product_settings_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_addons_per_product_settings_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_addons_per_product_settings_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_addons_per_product_settings_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_addons_per_product_total_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_addons_per_product_total_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_addons_per_product_total_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_addons_per_product_total_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_enabled_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_enabled_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_enabled_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_enabled_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_qty_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_qty_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_qty_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_qty_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_enable_by_variation_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_enable_by_variation_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_enable_by_variation_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_enable_by_variation_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_label_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_label_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_label_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_label_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_title_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_title_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_title_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_title_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_placeholder_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_placeholder_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_placeholder_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_placeholder_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_class_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_class_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_class_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_class_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_tooltip_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_tooltip_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_tooltip_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_tooltip_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_type_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_type_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_type_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_type_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_default_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_default_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_default_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_default_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_required_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_addons_per_product_required_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_required_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_addons_per_product_required_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_bookings_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_bookings_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_bookings_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_bookings_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_by_date_direct_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_by_date_direct_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_by_date_direct_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_by_date_direct_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_by_date_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_by_date_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_by_date_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_by_date_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_by_date_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_by_date_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_by_date_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_by_date_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_by_time_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_by_time_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_by_time_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_by_time_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_by_time_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_by_time_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_by_time_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_by_time_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_images_hide_image_on_archives'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_images_hide_image_on_archives'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_images_hide_image_on_archives'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_images_hide_image_on_archives'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_images_meta_custom_on_archives'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_images_meta_custom_on_archives'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_images_meta_custom_on_archives'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_images_meta_custom_on_archives'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_images_meta_custom_on_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_images_meta_custom_on_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_images_meta_custom_on_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_images_meta_custom_on_single'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_images_hide_image_on_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_images_hide_image_on_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_images_hide_image_on_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_images_hide_image_on_single'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_images_hide_thumb_on_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_images_hide_thumb_on_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_images_hide_thumb_on_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_images_hide_thumb_on_single'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_msrp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_msrp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_msrp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_msrp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_open_price_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_open_price_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_open_price_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_open_price_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_open_price_default_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_open_price_default_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_open_price_default_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_open_price_default_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_open_price_min_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_open_price_min_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_open_price_min_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_open_price_min_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_open_price_max_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_open_price_max_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_open_price_max_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_open_price_max_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_price_by_formula_calculation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_price_by_formula_calculation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_price_by_formula_calculation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_price_by_formula_calculation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_price_by_formula_eval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_price_by_formula_eval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_price_by_formula_eval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_price_by_formula_eval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_price_by_formula_total_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_price_by_formula_total_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_price_by_formula_total_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_price_by_formula_total_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_product_price_by_formula_param_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_product_price_by_formula_param_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_product_price_by_formula_param_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_product_price_by_formula_param_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_price_by_formula_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_price_by_formula_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_price_by_formula_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_price_by_formula_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_key_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_custom_product_tabs_key_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_key_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_key_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_title_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_custom_product_tabs_title_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_title_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_title_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_custom_product_tabs_local_total_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_custom_product_tabs_local_total_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_custom_product_tabs_local_total_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_custom_product_tabs_local_total_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_content_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_custom_product_tabs_content_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_content_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_content_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_priority_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_custom_product_tabs_priority_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_priority_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_priority_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_link_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_custom_product_tabs_link_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_link_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_link_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_link_new_tab_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_custom_product_tabs_link_new_tab_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_link_new_tab_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_custom_product_tabs_link_new_tab_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcj_product_attribute_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcj_product_attribute_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcj_product_attribute_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcj_product_attribute_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcj_product_attribute_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcj_product_attribute_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcj_product_attribute_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcj_product_attribute_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_purchase_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_purchase_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_purchase_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_purchase_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_info_related_products_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_info_related_products_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_info_related_products_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_info_related_products_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_info_related_products_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_info_related_products_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_info_related_products_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_info_related_products_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_sale_flash_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_sale_flash_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_sale_flash_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_sale_flash_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_sale_flash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_sale_flash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_sale_flash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_sale_flash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_track_users_http_referer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_track_users_http_referer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_track_users_http_referer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_track_users_http_referer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_wholesale_price_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_wholesale_price_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_wholesale_price_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_wholesale_price_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_wholesale_price_levels_number%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_wholesale_price_levels_number%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_wholesale_price_levels_number%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_wholesale_price_levels_number%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcj_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcj_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcj_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcj_wishlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_invisible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_invisible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_invisible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_invisible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_price_by_country_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_price_by_country_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_price_by_country_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_price_by_country_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_purchase_price_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_purchase_price_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_purchase_price_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_purchase_price_extra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_purchase_price_affiliate_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_purchase_price_affiliate_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_purchase_price_affiliate_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_purchase_price_affiliate_commission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_purchase_price_custom_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_purchase_price_custom_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_purchase_price_custom_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_purchase_price_custom_field_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_product_input_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_product_input_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_product_input_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_product_input_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_wholesale_price_per_product_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_wholesale_price_per_product_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_wholesale_price_per_product_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_wholesale_price_per_product_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_raq_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_raq_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_raq_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_raq_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_total_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_total_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_total_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_total_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcj_preset_undo_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcj_preset_undo_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcj_preset_undo_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcj_preset_undo_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcj_last_preset_applied'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcj_last_preset_applied'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcj_last_preset_applied'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcj_last_preset_applied'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b2bking_customergroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b2bking_customergroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b2bking_customergroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b2bking_customergroup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcj_wholesale_price_levels_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcj_wholesale_price_levels_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcj_wholesale_price_levels_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcj_wholesale_price_levels_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcj_wholesale_price_levels_number_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcj_wholesale_price_levels_number_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcj_wholesale_price_levels_number_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcj_wholesale_price_levels_number_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
