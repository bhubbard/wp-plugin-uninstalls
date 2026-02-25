#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usam_pointer'
wp option delete 'usam_cahe_site_icon'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'usam_%'"
wp option delete 'usam_db_version'
wp option delete 'usam_notice'
wp option delete 'usam_website_type'
wp option delete 'usam_shop_phone'
wp option delete 'usam_units_measure'
wp option delete 'usam_order_document_number'
wp option delete 'usam_payment_document_number'
wp option delete 'usam_document_number_counter'
wp option delete 'usam_trading_platforms_rules'
wp option delete 'usam_directory'
wp option delete 'usam_ip_telephony'
wp option delete 'usam_product_order'
wp option delete 'usam_search_product_property'
wp option delete 'usam_terms_and_conditions'
wp option delete 'usam_products_for_buyers'
wp option delete 'usam_html_blocks'
wp option delete 'usam_display_categories'
wp option delete 'usam_search_engine_location'
wp option delete 'usam_mytarget_counter_active'
wp option delete 'usam_mytarget_counter'
wp option delete 'usam_product_content_display'
wp option delete 'usam_theme_home_blocks'
wp option delete 'usam_shop_requisites_shortcode'
wp option delete 'usam_html_blocks_home'
wp option delete 'usam_html_blocks_transaction_results'
wp option delete 'usam_html_blocks_unsuccessful_transaction_results'
wp option delete 'usam_show_product_rating'
wp option delete 'usam_shop_company'
wp option delete 'usam_currency_type'
wp option delete 'usam_crm_contact_source'
wp option delete 'usam_geotargeting'
wp option delete 'usam_tnved'
wp option delete 'usam_vk_api'
wp option delete 'usam_user_profile_activation'
wp option delete 'usam_ftp_settings'
wp option delete 'usam_1c'
wp option delete 'usam_printing_form'
wp option delete 'usam_instagram_api'
wp option delete 'usam_types_payers'
wp option delete 'usam_calendars'
wp option delete 'usam-variation_children'
wp option delete 'usam_system_page'
wp option delete 'usam_product_labels'
wp option delete 'usam_types_products_sold'
wp option delete 'usam_return_email'
wp option delete 'usam_vk_autopost'
wp option delete 'usam_ok_autopost'
wp option delete 'usam_yandex'
wp option delete 'usam_license'
wp option delete 'usam_default_values_product'
wp option delete 'usam_default_catalog'
wp option delete 'usam_shop_location'
wp option delete 'usam_languages'
wp option delete 'usam_disable_rss'
wp option delete 'usam_product_image'
wp option delete 'usam_single_view_image'
wp option delete 'usam_crop_thumbnails'
wp option delete 'usam_image_quality'
wp option delete 'usam_permalinks'
wp option delete 'usam_order_view_grouping'
wp option delete 'usam_accumulative_discount'
wp option delete 'usam_balance_information'
wp option delete 'usam_options_earning_marketplace'
wp option delete 'usam_crosssell_conditions'
wp option delete 'usam_notifications'
wp option delete 'usam-brands_children'
wp option delete 'usam-category_children'
wp option delete 'usam_product_day_rules'
wp option delete 'usam_vk_publishing_rules'
wp option delete 'usam_purchase_rules'
wp option delete 'usam_underprice_rules'
wp option delete 'usam_vk_contest'
wp option delete 'usam_working_day'
wp option delete 'usam_automation_working_day'
wp option delete 'usam_backup_bd_active'
wp option delete 'usam_sms_gateway_option'
wp option delete 'usam_server_load_log'
wp option delete 'usam_log'
wp option delete 'usam_stand_service'
wp option delete 'usam_fb_api'
wp option delete 'usam_page_transaction_results'
wp option delete 'usam_theme_footer_panel'
wp option delete 'usam_default_category'
wp option delete 'usam_inventory_control'
wp option delete 'usam_thousands_separator'
wp option delete 'usam_decimal_separator'
wp option delete 'usam_uses_coupons'
wp option delete 'usam_uses_bonuses'
wp option delete 'usam_bonus_rules'
wp option delete 'usam_product_reserve_condition'
wp option delete 'usam_registration_upon_purchase'
wp option delete 'usam_consent_processing_personal_data'
wp option delete 'usam_rules_certificates'
wp option delete 'usam_coupons_roles'
wp option delete 'usam_sorting_options'
wp option delete 'usam_product_sort_by'
wp option delete 'usam_number_products_line'
wp option delete 'usam_product_grid'
wp option delete 'usam_product_list'
wp option delete 'usam_check_position_site'
wp option delete 'usam_time_keeping_baskets'
wp option delete 'usam_product_reserve_clear_period'
wp option delete 'usam_bonuses_rules'
wp option delete 'usam_language'
wp option delete 'usam_phones'
wp option delete 'usam_products_per_page'
wp option delete 'usam_motivation_employees'
wp option delete 'usam_vk_like'
wp option delete 'usam_currency_sign_location'
wp option delete 'usam_number_days_delay_payment'
wp option delete 'usam_min_selling_price_product'
wp option delete 'usam_max_downloads'
wp option delete 'usam_default_reservation_storage'
wp option delete 'usam_start_work_events'
wp option delete 'usam_product_views'
wp option delete 'usam_product_view'
wp option delete 'page_for_user_agreement'
wp option delete 'cookie_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'usam_html_blocks_%'"
wp option delete 'usam_site_headers'
wp option delete 'usam_disable_collection'
wp option delete 'usam_popup_adding_to_cart'
wp option delete 'usam_account_rules'
wp option delete 'usam_dimension_unit'
wp option delete 'usam_display_sold_products'
wp option delete 'usam_metas'
wp option delete 'usam_page_view'
wp option delete 'usam_robots'
wp option delete 'usam_central_platform_site'
wp option delete 'usam_chat_bot'
wp option delete 'usam_reviews'
wp option delete 'usam_facebook_pixel'
wp option delete 'usam_google'
wp option delete 'usam_odnoklassniki'
wp option delete 'usam_max_number_of_sms_month'
wp option delete 'usam_sms_gateway'
wp option delete 'usam_sms_gateway_name'
wp option delete 'usam_telegram'
wp option delete 'usam_vk_pixel'
wp option delete 'usam_max_width'
wp option delete 'usam_max_height'
wp option delete 'usam_ancestors_folders'
wp option delete 'usam_weight_unit'
wp option delete 'usam_ancestors_locations'
wp option delete 'usam_get_customer_location'
wp option delete 'usam_sales_area'
wp option delete 'usam_install_date'
wp option delete 'usam-product_attributes_children'
wp option delete 'usam_fb_autopost'
wp option delete 'usam_vk_autopost_error'
wp option delete 'usam_author_redirect'
wp option delete 'usam_cookie_notice'
wp option delete 'usam_chat'
wp option delete 'usam_attachment_redirect'
wp option delete 'usam_ip_lock_downloads'
wp option delete 'usam_sales_commission_seller'
wp option delete 'rules'
wp option delete 'usam_rename_attacment'
wp option delete 'usam_format_file_name_attacment'
wp option delete 'usam_format_file_title_attacment'
wp option delete 'usam_cache_menu'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'menu-cache-%'"
wp option delete 'usam_table_charset'
wp option delete 'usam_category_hierarchical_url'
wp option delete 'blogurl'
wp option delete 'usam_product_tags'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'usam_product_%'"
wp option delete 'usam_users_product_lists'
wp option delete 'usam_product_pagination'
wp option delete 'usam_show_multi_add'
wp option delete 'usam_category_description'
wp option delete 'usam_hide_addtocart_button'
wp option delete 'usam_name_addtocart_button'
wp option delete 'usam_target_addtocart_button'
wp option delete 'usam_under_order_button'
wp option delete 'usam_number_days_product_new'
wp option delete 'usam_type_prices'
wp option delete 'usam_show_zero_price'
wp option delete 'usam_show_subcatsprods_in_cat'
wp option delete 'usam_search_sku_enable'
wp option delete 'usam_search_in_stock_enable'
wp option delete 'usam_search_price_enable'
wp option delete 'usam_search_text_lenght'
wp option delete 'usam_search_categories_enable'
wp option delete 'usam_google_query_limit'
wp option delete 'usam_yandex_query_limit'
wp option delete 'usam_google_analytics_active'
wp option delete 'usam_yandex_metrika_active'
wp option delete 'usam_vk_pixel_active'
wp option delete 'usam_facebook_pixel_active'
wp option delete 'usam_bing'
wp option delete 'usam_pinterest'
wp option delete 'usam_set_events'
wp option delete 'usam_exchange_mysql_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"
wp option delete 'usam_default_menu_category'
wp option delete 'usam_display_category_name'
wp option delete 'usam_mailtemplate'
wp option delete 'usam_user_menu'
wp option delete 'usam_show_breadcrumbs'
wp option delete 'usam_allow_tracking'
wp option delete 'usam_tracker_last_send'
wp option delete 'usam_order_action_buttons'
wp option delete 'usam_theme_footer_panel_active'
wp option delete 'usam_show_name_variation'

# Delete Transients
wp transient delete 'usam_start_query_position_site'
wp transient delete 'usam_process_complete'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_application_access_token_%' OR option_name LIKE '_site_transient_application_access_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_merchant_access_token_%' OR option_name LIKE '_site_transient_merchant_access_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_shipping_access_token_%' OR option_name LIKE '_site_transient_shipping_access_token_%'"
wp transient delete 'usam_email_verification_job'
wp transient delete 'usam_location_file'
wp transient delete '_usam_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_arbitr_check_company_%' OR option_name LIKE '_site_transient_arbitr_check_company_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_check_company_%' OR option_name LIKE '_site_transient_check_company_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_company_registration_data_%' OR option_name LIKE '_site_transient_company_registration_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_justice_check_company_turn_%' OR option_name LIKE '_site_transient_justice_check_company_turn_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_justice_check_company_%' OR option_name LIKE '_site_transient_justice_check_company_%'"
wp transient delete 'sokolov_access_token'
wp transient delete 'usam_yandex_suspicious_traffic'
wp transient delete 'usam_google_suspicious_traffic'

# Clear Cron Jobs
wp cron event delete 'usam_tracker_send_event'
wp cron event delete 'usam_start_process'
wp cron event delete 'usam_begining_work_day'
wp cron event delete 'usam_cron_task_day'
wp cron event delete 'usam_theme_installer'
wp cron event delete 'usam_install_default_db_data'
wp cron event delete 'usam_avito_update_avito_id'
wp cron event delete 'usam_moysklad_update_product_stock'
wp cron event delete 'usam_ozon_update_ozon_id'
wp cron event delete 'do_usam_pings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-background-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-background-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-background-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-background-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-hover-background-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-hover-background-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-hover-background-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-hover-background-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-border-radius'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-border-radius'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-border-radius'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-border-radius'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-font-size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-font-size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-font-size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-font-size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu-item-padding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu-item-padding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu-item-padding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu-item-padding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manager_type_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manager_type_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manager_type_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manager_type_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usam_tab_calendar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usam_tab_calendar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usam_tab_calendar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usam_tab_calendar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usam_page_tab_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usam_page_tab_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usam_page_tab_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usam_page_tab_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'meta_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'meta_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'meta_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'meta_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%product_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%product_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%product_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%product_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usam-category-tree'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usam-category-tree'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usam-category-tree'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usam-category-tree'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'postmeta_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'postmeta_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'postmeta_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'postmeta_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'meta_filter_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'meta_filter_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'meta_filter_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'meta_filter_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'representative_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'representative_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'representative_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'representative_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usam_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usam_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usam_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usam_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usam_sip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usam_sip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usam_sip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usam_sip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usam_email_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usam_email_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usam_email_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usam_email_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'usam_notification_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'usam_notification_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'usam_notification_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'usam_notification_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usam_order_view_grouping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usam_order_view_grouping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usam_order_view_grouping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usam_order_view_grouping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usam_accumulative_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usam_accumulative_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usam_accumulative_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usam_accumulative_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_management_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_management_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_management_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_management_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usam_calendars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usam_calendars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usam_calendars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usam_calendars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wt_canonical_base_domain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wt_canonical_base_domain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wt_canonical_base_domain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wt_canonical_base_domain'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attachment_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attachment_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attachment_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attachment_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
