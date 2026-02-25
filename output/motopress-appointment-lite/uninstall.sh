#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpa_permalinks_need_update'
wp option delete 'mpa_last_known_extensions'
wp option delete 'mpa_currency'
wp option delete 'mpa_currency_position'
wp option delete 'mpa_confirmation_mode'
wp option delete 'mpa_cash_payment_gateway_enable'
wp option delete 'mpa_db_history'
wp option delete 'mpa_cash_payment_gateway_title'
wp option delete 'mpa_default_booking_status'
wp option delete 'mpa_admin_email'
wp option delete 'mpa_from_email'
wp option delete 'mpa_from_name'
wp option delete 'mpa_email_logo_url'
wp option delete 'mpa_email_footer_text'
wp option delete 'mpa_email_base_color'
wp option delete 'mpa_email_bg_color'
wp option delete 'mpa_email_body_bg_color'
wp option delete 'mpa_email_text_color'
wp option delete 'mpa_default_time_step'
wp option delete 'mpa_time_step_alignment'
wp option delete 'mpa_terms_page_id_for_acceptance'
wp option delete 'mpa_allow_multibooking'
wp option delete 'mpa_allow_coupons'
wp option delete 'mpa_user_can_cancel_booking'
wp option delete 'mpa_booking_cancellation_page'
wp option delete 'mpa_booking_cancelled_page'
wp option delete 'mpa_customer_account_creation_mode'
wp option delete 'mpa_customer_account_page'
wp option delete 'mpa_country'
wp option delete 'mpa_decimal_separator'
wp option delete 'mpa_thousand_separator'
wp option delete 'mpa_number_of_decimals'
wp option delete 'mpa_google_calendar_client_id'
wp option delete 'mpa_google_calendar_client_secret'
wp option delete 'mpa_license_status'
wp option delete 'mpa_hide_license_notice'
wp option delete 'mpa_edd_license_key'
wp option delete 'mpa_form_calendar_theme'
wp option delete 'mpa_form_styles'
wp option delete 'mpa_email_notification_from_email'
wp option delete 'mpa_email_notification_from_name'
wp option delete 'mpa_sms_notification_sender_id'
wp option delete 'mpa_admin_phone'
wp option delete 'mpa_payment_success_page'
wp option delete 'mpa_payment_failed_page'
wp option delete 'mpa_default_payment_gateway'
wp option delete 'mpa_pending_payment_time'

# Delete Transients
wp transient delete 'mpa_extensions'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_is_admin_booking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_is_admin_booking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_is_admin_booking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_is_admin_booking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_expect_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_expect_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_expect_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_expect_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_pending_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_pending_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_pending_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_pending_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_gateway_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_gateway_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_gateway_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_gateway_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_employee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_employee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_employee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_employee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_main_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_main_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_main_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_main_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_timetable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_timetable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_timetable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_timetable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_employees'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_employees'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_employees'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_employees'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_gateway_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_gateway_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_gateway_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_gateway_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_total_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_total_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_total_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_total_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_time_before_booking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_time_before_booking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_time_before_booking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_time_before_booking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_max_advance_time_before_reservation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_max_advance_time_before_reservation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_max_advance_time_before_reservation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_max_advance_time_before_reservation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_coupon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_coupon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_coupon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_coupon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_customer_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_customer_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_customer_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_customer_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_customer_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_customer_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_customer_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_customer_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_deposit_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_deposit_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_deposit_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_deposit_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_service_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_service_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_service_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_service_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_buffer_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_buffer_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_buffer_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_buffer_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_service'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpa_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpa_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpa_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpa_capacity'"
