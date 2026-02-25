#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bookingor_settings_email_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_first_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_last_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_phone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_city'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_country'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_website'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_description'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_latitude'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_longitude'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_business_hours'"
wp option delete 'bookingor_settings_category_active'
wp option delete 'bookingor_settings_location_active'
wp option delete 'bookingor_settings_location_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_email_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_wp_sender_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_wp_email_sender'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_currency_symbol'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_calender_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_calender_days'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_category_frontend'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_service_frontend'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_staff_frontend'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_convert_duration'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_woocommcerce_payment_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_woocommcerce_payment_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_woocommerce_text_description'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_default_time_slot'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options_service_cancel'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options_service_before_book'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_default_booking_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_create_account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_delete_account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_set_username'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_google_signin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_facebook_signin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_staff_create_account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_staff_delete_account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_staff_google_signin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_staff_facebook_signin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_staff_allow_account'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_date_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time_format'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_currency_position_change'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_currency_decimal_point'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_country_currency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_default_time_sheet'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_category_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_service_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_staff_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_location_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_details_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_payment_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_category_images_icons'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_business_details_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_business_logo_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_business_name_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_business_phone_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_business_description_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_business_email_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_logo_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_category_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_service_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_location_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_staff_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_category_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_service_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_location_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_staff_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_date_time_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_book_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_payment_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_repeat_book_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_repeat_upcoming_booking_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_repeat_every_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_repeat_booking_end_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_repeat_pick_date_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_service_price_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_service_duration_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_service_description_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_service_capacity_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_service_images_icons'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_setting_category_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_service_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_staff_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_location_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_date_time_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_repeat_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_default_calendar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_p_ky_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_p_ky'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_p_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_setup_completed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_color_sidebar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_color_sidebar_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_color_sidebar_text_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_color_border'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_color_continue_button_background'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_color_continue_button_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_color_back_button_background'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_color_back_button_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_color_hover_border'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_color_bg_border'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_back_button_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_continue_button_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_book_button_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_payment_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_details_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_cart_information_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_cart_payment_information_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_button_text_book'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_active_design_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_color_design_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_radius_design_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_active_design_2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_color_design_2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_radius_design_2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_active_design_3'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_color_design_3'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_radius_design_3'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_status_active_text_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_status_completed_text_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_color_label_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_status_progress_bar_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_active_design_4'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_color_design_4'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_radius_design_4'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_active_design_6'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_color_design_6'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_radius_design_6'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_design_1_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_design_1_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_design_1_radius'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_buttons_border_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_buttons_radius'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_buttons_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_fonts_headings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_fonts_all_other'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_first_name_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_last_name_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_email_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_phone_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_first_name_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_last_name_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_email_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_customer_phone_label'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_pay_on_visit_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_booking_thank_you_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_booking_confirm_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_capacity_people_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_capacity_with_you_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_capacity_required'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_location_city'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_location_address'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_location_phone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_design_3_active_color_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_time_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_customer_dashboard_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_staff_dashboard_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_twilio_to_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%bkinz-day-full.selected'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_active_design_5'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_background_border_color_design_5'"
wp option delete 'bookingor_settings_staff_name'
wp option delete 'bookingor_settings_staff_active'
wp option delete 'bookingor_starter_setup_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings_category_position'"
wp option delete 'bookingor_date_format'
wp option delete 'bookingor_time_format'
wp option delete 'bookingor_currency_position_change'
wp option delete 'bookingor_settings_currency_symbol'
wp option delete 'bookingor_business_name'
wp option delete 'bookingor_business_logo'
wp option delete 'bookingor_business_description'
wp option delete 'bookingor_business_website'
wp option delete 'bookingor_business_email'
wp option delete 'bookingor_business_phone'
wp option delete 'bookingor_business_country'
wp option delete 'bookingor_business_city'
wp option delete 'bookingor_business_first_name'
wp option delete 'bookingor_business_last_name'
wp option delete 'bookingor_business_hours'
wp option delete 'bookingor_currency_position_change  '
wp option delete 'bookingor_settings_google_maps_api_key'
wp option delete 'bpro_settings_default_time_slot'
wp option delete 'bookingor_settings_woocommcerce_payment_active'
wp option delete 'bookingor_settings_default_booking_status'
wp option delete 'bookingor_settings_default_time_sheet'
wp option delete 'bookingor_settings_convert_duration'
wp option delete 'bookingor_settings_country_currency'
wp option delete 'bookingor_currency_decimal_point'
wp option delete 'bookingor_settings_wp_email_sender'
wp option delete 'bookingor_settings_wp_sender_name'
wp option delete 'bookingor_settings_paypal_sandbox'
wp option delete 'bookingor_settings_paypal_sandbox_client_id'
wp option delete 'bookingor_settings_paypal_sandbox_client_secret'
wp option delete 'bookingor_settings_paypal_active'
wp option delete 'bookingor_settings_paypal_live_client_id'
wp option delete 'bookingor_settings_paypal_live_client_secret'
wp option delete 'bookingor_settings_stripe_active'
wp option delete 'bookingor_settings_stripe_live_public_key'
wp option delete 'bookingor_settings_stripe_live_secret_key'
wp option delete 'bookingor_settings_google_calendar_active'
wp option delete 'bookingor_settings_google_calendar_client_id'
wp option delete 'bookingor_settings_google_calendar_client_secret'
wp option delete 'bookingor_settings_google_calendar_redirect_uri'
wp option delete 'bookingor_settings_google_calendar_frontend_redirect_uri'
wp option delete 'bookingor_settings_google_meet_active'
wp option delete 'bookingor_settings_google_calendar_event_title'
wp option delete 'bookingor_settings_google_calendar_event_description'
wp option delete 'bookingor_settings_zoom_server_to_server'
wp option delete 'bookingor_settings_zoom_account_id'
wp option delete 'bookingor_settings_zoom_client_id'
wp option delete 'bookingor_settings_zoom_client_secret'
wp option delete 'bookingor_settings_zoom_meeting_title'
wp option delete 'bookingor_settings_zoom_meeting_description'
wp option delete 'bookingor_settings_woocommcerce_payment_page'
wp option delete 'bookingor_settings_woocommerce_text_description'
wp option delete 'bookingor_settings_twilio_active'
wp option delete 'bookingor_settings_twilio_account_sid_key'
wp option delete 'bookingor_settings_twilio_auth_token_secret_key'
wp option delete 'bookingor_settings_twilio_phone_number'
wp option delete 'bookingor_settings_whatsapp_phone_number_id'
wp option delete 'bookingor_settings_whatsapp_permanent_access_token'
wp option delete 'bookingor_settings_whatsapp_business_account_id'
wp option delete 'bookingor_settings_customer_create_account'
wp option delete 'bookingor_customer_dashboard_page'
wp option delete 'bookingor_settings_staff_allow_account'
wp option delete 'bookingor_staff_dashboard_page'
wp option delete 'bookingor_settings_p_ky'
wp option delete 'bookingor_settings_color_sidebar'
wp option delete 'bookingor_settings_color_sidebar_text'
wp option delete 'bookingor_settings_color_sidebar_text_active'
wp option delete 'bookingor_settings_color_border'
wp option delete 'bookingor_settings_fonts_headings'
wp option delete 'bookingor_settings_fonts_all_other'
wp option delete 'bookingor_settings_background_radius_design_1'
wp option delete 'bookingor_settings_background_border_active_design_1'
wp option delete 'bookingor_settings_background_border_color_design_1'
wp option delete 'bookingor_settings_book_button_text'
wp option delete 'bookingor_settings_continue_button_text'
wp option delete 'bookingor_settings_color_continue_button_background'
wp option delete 'bookingor_settings_color_continue_button_text'
wp option delete 'bookingor_settings_buttons_border_active'
wp option delete 'bookingor_settings_buttons_border_color'
wp option delete 'bookingor_settings_buttons_radius'
wp option delete 'bookingor_settings_back_button_text'
wp option delete 'bookingor_settings_color_back_button_background'
wp option delete 'bookingor_settings_color_back_button_text'
wp option delete 'bookingor_settings_service_required'
wp option delete 'bookingor_settings_service_description_show'
wp option delete 'bookingor_settings_service_price_show'
wp option delete 'bookingor_settings_service_duration_show'
wp option delete 'bookingor_settings_service_capacity_show'
wp option delete 'bookingor_settings_service_name'
wp option delete 'bookingor_settings_service_images_icons'
wp option delete 'bookingor_settings_staff_required'
wp option delete 'bookingor_settings_extra_required'
wp option delete 'bookingor_settings_extra_name'
wp option delete 'bookingor_settings_time_required'
wp option delete 'bookingor_settings_time_name'
wp option delete 'bookingor_settings_capacity_required'
wp option delete 'bookingor_settings_capacity_people_text'
wp option delete 'bookingor_settings_capacity_with_you_text'
wp option delete 'bookingor_settings_customer_details_required'
wp option delete 'bookingor_settings_cart_information_required'
wp option delete 'bookingor_settings_customer_book_name'
wp option delete 'bookingor_settings_customer_first_name_active'
wp option delete 'bookingor_settings_customer_first_name_label'
wp option delete 'bookingor_settings_customer_last_name_active'
wp option delete 'bookingor_settings_customer_last_name_label'
wp option delete 'bookingor_settings_customer_phone_active'
wp option delete 'bookingor_settings_customer_phone_label'
wp option delete 'bookingor_settings_customer_email_label'
wp option delete 'bookingor_settings_extra_active'
wp option delete 'bookingor_settings_customer_payment_active'
wp option delete 'bookingor_settings_customer_payment_required'
wp option delete 'bookingor_settings_customer_payment_name'
wp option delete 'bookingor_settings_pay_on_visit_name'
wp option delete 'bookingor_settings_cart_payment_information_required'
wp option delete 'bookingor_settings_final_page_cart_required'
wp option delete 'bookingor_settings_booking_thank_you_text'
wp option delete 'bookingor_settings_booking_confirm_text'
wp option delete 'bookingor_settings_background_radius_design_2'
wp option delete 'bookingor_settings_background_border_active_design_2'
wp option delete 'bookingor_settings_background_border_color_design_2'
wp option delete 'bookingor_settings_category_required'
wp option delete 'bookingor_settings_category_name'
wp option delete 'bookingor_settings_category_images_icons'
wp option delete 'bookingor_settings_status_active_text_color'
wp option delete 'bookingor_settings_status_completed_text_color'
wp option delete 'bookingor_settings_status_progress_bar_background_color'
wp option delete 'bookingor_settings_background_radius_design_3'
wp option delete 'bookingor_settings_background_border_active_design_3'
wp option delete 'bookingor_settings_background_border_color_design_3'
wp option delete 'bookingor_settings_date_time_name'
wp option delete 'bookingor_settings_background_radius_design_4'
wp option delete 'bookingor_settings_background_border_active_design_4'
wp option delete 'bookingor_settings_background_border_color_design_4'
wp option delete 'bookingor_settings_color_label_text'
wp option delete 'bookingor_settings_business_phone_required'
wp option delete 'bookingor_settings_business_name_required'
wp option delete 'bookingor_settings_business_email_required'
wp option delete 'bookingor_settings_background_radius_design_6'
wp option delete 'bookingor_settings_background_border_active_design_6'
wp option delete 'bookingor_settings_background_border_color_design_6'
wp option delete 'bookingor_settings_business_details_active'
wp option delete 'bookingor_settings_business_logo_required'
wp option delete 'bookingor_settings_business_description_required'
wp option delete 'bookingor_settings_woocommerce_payment_active'
wp option delete 'bookingor_settings_location_address'
wp option delete 'bookingor_settings_repeat_book_name'
wp option delete 'bookingor_settings_default_time_slot'
wp option delete 'bookingor_currency'

# Delete Transients
wp transient delete 'bookingor_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
