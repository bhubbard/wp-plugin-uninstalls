#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yatra_booking_notification_email_content_for_admin'
wp option delete 'yatra_booking_notification_email_subject_for_admin'
wp option delete 'yatra_booking_status_change_notification_email_content_for_admin'
wp option delete 'yatra_booking_status_change_notification_email_subject_for_admin'
wp option delete 'yatra_enquiry_notification_email_content_for_admin'
wp option delete 'yatra_enquiry_notification_email_subject_for_admin'
wp option delete 'yatra_booking_notification_email_content_for_customer'
wp option delete 'yatra_booking_notification_email_subject_for_customer'
wp option delete 'yatra_booking_status_change_notification_email_content_for_customer'
wp option delete 'yatra_booking_status_change_notification_email_subject_for_customer'
wp option delete 'yatra_admin_notices'
wp option delete 'yatra_helper_options'
wp option delete 'yatra_allow_tracking'
wp option delete 'yatra_install_date'
wp option delete 'yatra_integration_captcha_on_enquiry_form'
wp option delete 'yatra_integration_captcha_on_booking_form'
wp option delete 'yatra_integration_captcha_site_key'
wp option delete 'yatra_integration_captcha_secret_key'
wp option delete 'yatra_integration_captcha_v3_threshold_score'
wp option delete 'yatra_pro_enabled_features'
wp option delete 'yatra_pro_downloads_enabled'
wp option delete 'yatra_pro_payment_gateways_enabled'
wp option delete 'yatra_pro_availability_conditions_enabled'
wp option delete 'yatra_pro_google_calendar_enabled'
wp option delete 'yatra_pro_partial_payment_enabled'
wp option delete 'yatra_pro_review_ratings_enabled'
wp option delete 'yatra_pro_services_enabled'
wp option delete 'yatra_use_php_sessions'
wp option delete 'yatra_license'
wp option delete 'yatra_permalinks'
wp option delete 'yatra_cart_page'
wp option delete 'yatra_checkout_page'
wp option delete 'yatra_thankyou_page'
wp option delete 'yatra_my_account_page'
wp option delete 'yatra_queue_flush_rewrite_rules'
wp option delete 'yatra_file_download_method'
wp option delete 'yatra_setup_wizard_ran'
wp option delete 'yatra_currency'
wp option delete 'yatra_currency_position'
wp option delete 'yatra_thousand_separator'
wp option delete 'yatra_price_number_decimals'
wp option delete 'yatra_decimal_separator'
wp option delete 'yatra_page_container_class'
wp option delete 'yatra_setting_layouts_single_tour_tab_layout'
wp option delete 'yatra_enable_guest_checkout'
wp option delete 'yatra_promo_notice_key'
wp option delete 'yatra_setup_wizard_importer_already_ran'
wp option delete 'yatra_date_selection_type'
wp option delete 'yatra_enquiry_form_show'
wp option delete 'yatra_disable_all_email'
wp option delete 'yatra_admin_email_recipient_lists'
wp option delete 'yatra_email_from_address'
wp option delete 'yatra_email_from_name'
wp option delete 'yatra_plugin_version'
wp option delete 'yatra_failed_transaction_page'
wp option delete 'yatra_plugin_db_version'
wp option delete 'yatra_available_for_booking_text'
wp option delete 'yatra_available_for_enquiry_text'
wp option delete 'yatra_not_available_for_booking_enquiry_text'
wp option delete 'yatra_available_travellers_text'
wp option delete 'yatra_frontend_tabs_available_options'
wp option delete 'yatra_design_primary_color'
wp option delete 'yatra_available_for_booking_color'
wp option delete 'yatra_available_for_enquiry_only_color'
wp option delete 'yatra_not_available_for_booking_enquiry_color'
wp option delete 'yatra_log_options'
wp option delete 'yatra_setting_layouts_tour_archive'
wp option delete 'active_sitewide_plugins'
wp option delete 'yatra_payment_gateway_booking_only_label_on_checkout'
wp option delete 'yatra_payment_gateways'
wp option delete 'yatra_payment_gateway_test_mode'
wp option delete 'yatra_payment_gateway_enable_logging'
wp option delete 'yatra_payment_gateway_paypal_email'
wp option delete 'yatra_payment_gateway_paypal_label_on_checkout'
wp option delete 'yatra_currency_symbol_type'
wp option delete 'yatra_booknow_button_text'
wp option delete 'yatra_enquiry_button_text'
wp option delete 'yatra_privacy_policy_agree_label'
wp option delete 'yatra_terms_and_conditions_agree_label'
wp option delete 'yatra_terms_and_conditions_page'
wp option delete 'yatra_tour_view_details_button_text'
wp option delete 'yatra_payment_tax_rate'
wp option delete 'yatra_disable_powered_by_link_on_email'

# Delete Transients
wp transient delete '_yatra_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"
wp transient delete 'yatra_test_remote_post'
wp transient delete 'yatra_test_remote_get'
wp transient delete 'yatra_system_status_wp_version_check'

# Clear Cron Jobs
wp cron event delete 'yatra_weekly_scheduled_events'
wp cron event delete 'yatra_daily_scheduled_events'
wp cron event delete 'wp_session_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_tour_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_tour_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_tour_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_tour_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_disable_booking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_disable_booking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_disable_booking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_disable_booking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_tour_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_tour_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_tour_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_tour_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_tour_fixed_departure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_tour_fixed_departure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_tour_fixed_departure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_tour_fixed_departure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_tour_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_tour_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_tour_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_tour_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_tour_external_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_tour_external_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_tour_external_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_tour_external_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_booking_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_booking_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_booking_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_booking_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_booking_meta_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_booking_meta_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_booking_meta_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_booking_meta_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_customer_booking_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_customer_booking_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_customer_booking_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_customer_booking_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fullname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fullname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fullname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fullname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_multiple_pricing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_multiple_pricing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_multiple_pricing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_multiple_pricing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'overview_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'overview_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'overview_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'overview_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'itinerary_repeator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'itinerary_repeator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'itinerary_repeator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'itinerary_repeator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_info_price_includes_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_info_price_includes_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_info_price_includes_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_info_price_includes_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_info_price_includes_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_info_price_includes_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_info_price_includes_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_info_price_includes_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_info_price_excludes_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_info_price_excludes_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_info_price_excludes_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_info_price_excludes_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_info_price_excludes_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_info_price_excludes_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_info_price_excludes_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_info_price_excludes_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq_repeator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq_repeator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq_repeator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq_repeator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_map_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_map_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_map_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_map_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currency_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currency_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currency_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currency_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paid_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paid_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paid_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paid_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payable_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payable_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payable_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payable_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'due_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'due_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'due_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'due_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'booking_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'booking_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'booking_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'booking_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'installment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'installment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'installment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'installment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'booking_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'booking_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'booking_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'booking_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_attribute_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_attribute_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_attribute_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_attribute_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_tour_duration_nights'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_tour_duration_nights'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_tour_duration_nights'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_tour_duration_nights'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_tour_duration_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_tour_duration_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_tour_duration_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_tour_duration_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_tour_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_tour_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_tour_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_tour_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_coupon_usages_bookings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_coupon_usages_bookings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_coupon_usages_bookings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_coupon_usages_bookings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_coupon_using_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_coupon_using_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_coupon_using_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_coupon_using_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_coupon_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_coupon_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_coupon_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_coupon_expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_coupon_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_coupon_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_coupon_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_coupon_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_coupon_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_coupon_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_coupon_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_coupon_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'destination_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'destination_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'destination_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'destination_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activity_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activity_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activity_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activity_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribute_field_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribute_field_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribute_field_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribute_field_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tour_meta_custom_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tour_meta_custom_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tour_meta_custom_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tour_meta_custom_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_tour_tabs_ordering'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_tour_tabs_ordering'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_tour_tabs_ordering'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_tour_tabs_ordering'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_availability_date_ranges'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_availability_date_ranges'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_availability_date_ranges'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_availability_date_ranges'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_sales_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_sales_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_sales_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_sales_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_pricing_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_pricing_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_pricing_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_pricing_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_pricing_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_pricing_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_pricing_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_pricing_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_price_per'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_price_per'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_price_per'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_price_per'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_group_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_group_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_group_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_group_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_minimum_pax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_minimum_pax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_minimum_pax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_minimum_pax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_maximum_pax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_maximum_pax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_maximum_pax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_maximum_pax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'active_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'active_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'active_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'active_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_tour_admin_active_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_tour_admin_active_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_tour_admin_active_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_tour_admin_active_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_meta_tour_admin_subtab_active_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_meta_tour_admin_subtab_active_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_meta_tour_admin_subtab_active_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_meta_tour_admin_subtab_active_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_slider_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_slider_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_slider_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_slider_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_enable_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_enable_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_enable_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_enable_slider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'txn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'txn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'txn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'txn_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_args'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_payment_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_payment_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_payment_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_payment_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_tour_maximum_number_of_traveller'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_tour_maximum_number_of_traveller'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_tour_maximum_number_of_traveller'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_tour_maximum_number_of_traveller'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_filter_meta_minimum_tour_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_filter_meta_minimum_tour_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_filter_meta_minimum_tour_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_filter_meta_minimum_tour_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_user_date_of_birth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_user_date_of_birth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_user_date_of_birth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_user_date_of_birth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_user_gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_user_gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_user_gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_user_gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_user_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_user_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_user_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_user_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_user_phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_user_phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_user_phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_user_phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yatra_user_contact_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yatra_user_contact_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yatra_user_contact_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yatra_user_contact_address'"
