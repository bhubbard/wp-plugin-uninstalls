#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mphb_db_version'
wp option delete 'mphb_enable_coupons'
wp option delete 'mphb_check_in_days'
wp option delete 'mphb_check_out_days'
wp option delete 'mphb_min_stay_length'
wp option delete 'mphb_max_stay_length'
wp option delete 'mphb_booking_rules_custom'
wp option delete 'mphb_min_advance_reservation'
wp option delete 'mphb_max_advance_reservation'
wp option delete 'mphb_buffer_days'
wp option delete 'mphb_last_known_extensions'
wp option delete 'mphb_fees'
wp option delete 'mphb_accommodation_taxes'
wp option delete 'mphb_service_taxes'
wp option delete 'mphb_fee_taxes'
wp option delete 'default_product_cat'
wp option delete 'mphb_passed_notices'
wp option delete 'mphb_registered_attributes'
wp option delete 'mphb_currency_symbol'
wp option delete 'mphb_currency_position'
wp option delete 'mphb_decimals_separator'
wp option delete 'mphb_thousand_separator'
wp option delete 'mphb_decimal_count'
wp option delete 'mphb_datepicker_date_format'
wp option delete 'mphb_check_in_time'
wp option delete 'mphb_check_out_time'
wp option delete 'mphb_admin_email'
wp option delete 'mphb_admin_name'
wp option delete 'mphb_email_footer_text'
wp option delete 'mphb_email_logo'
wp option delete 'mphb_email_base_color'
wp option delete 'mphb_email_bg_color'
wp option delete 'mphb_email_body_bg_color'
wp option delete 'mphb_email_body_text_color'
wp option delete 'mphb_email_from_name'
wp option delete 'mphb_email_hotel_admin_email'
wp option delete 'mphb_email_from_email'
wp option delete 'mphb_email_reserved_room_details'
wp option delete 'mphb_email_cancellation_details'
wp option delete 'mphb_license_key'
wp option delete 'mphb_license_status'
wp option delete 'mphb_hide_license_notice'
wp option delete 'mphb_user_approval_time'
wp option delete 'mphb_bed_types'
wp option delete 'mphb_confirmation_mode'
wp option delete 'mphb_search_max_adults'
wp option delete 'mphb_search_max_children'
wp option delete 'mphb_children_age'
wp option delete 'mphb_direct_booking'
wp option delete 'mphb_direct_booking_price'
wp option delete 'mphb_direct_search_results'
wp option delete 'mphb_template_mode'
wp option delete 'mphb_booking_disabled'
wp option delete 'mphb_user_can_cancel_booking'
wp option delete 'mphb_average_price_period'
wp option delete 'mphb_single_room_type_gallery_use_magnific'
wp option delete 'mphb_room_type_calendar_show_prices'
wp option delete 'mphb_room_type_calendar_truncate_prices'
wp option delete 'mphb_room_type_calendar_show_prices_currency'
wp option delete 'mphb_enable_recommendation'
wp option delete 'mphb_datepicker_theme'
wp option delete 'mphb_require_country'
wp option delete 'mphb_require_full_address'
wp option delete 'mphb_require_customer_on_admin'
wp option delete 'mphb_admin_default_calendar_period'
wp option delete 'mphb_default_country'
wp option delete 'mphb_guest_management'
wp option delete 'mphb_hide_guests_on_search'
wp option delete 'mphb_use_occupancy_presets_on_checkout'
wp option delete 'mphb_recommend_and_search_single_room_type_for_requested_guests_count'
wp option delete 'mphb_use_block_editor_for_room_types'
wp option delete 'mphb_use_block_editor_for_services'
wp option delete 'mphb_unfold_price_breakdown'
wp option delete 'mphb_automatically_create_user'
wp option delete 'mphb_allow_customers_create_account'
wp option delete 'mphb_allow_customers_log_in'
wp option delete 'mphb_ical_export_blocks'
wp option delete 'mphb_ical_dont_export_imports'
wp option delete 'mphb_ical_sync_with_buffers'
wp option delete 'mphb_ical_minimize_logs'
wp option delete 'mphb_ical_auto_delete_period'
wp option delete 'mphb_do_not_apply_booking_rules_for_admin'
wp option delete 'mphb_open_terms_in_new_window'
wp option delete 'mphb_my_account_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page'"
wp option delete 'mphb_checkout_page'
wp option delete 'mphb_search_results_page'
wp option delete 'mphb_booking_confirmation_page'
wp option delete 'mphb_user_cancel_redirect_page'
wp option delete 'mphb_payment_success_page'
wp option delete 'mphb_payment_failed_page'
wp option delete 'mphb_booking_cancellation_page'
wp option delete 'mphb_payment_amount_type'
wp option delete 'mphb_payment_deposit_type'
wp option delete 'mphb_payment_deposit_amount'
wp option delete 'mphb_payment_deposit_time_frame'
wp option delete 'mphb_payment_default_gateway'
wp option delete 'mphb_payment_pending_time'
wp option delete 'mphb_payment_force_checkout_ssl'
wp option delete 'mphb_square_unit'
wp option delete 'mphb_custom_booking_rules'
wp option delete 'mphb_global_check_in_days'
wp option delete 'mphb_global_check_out_days'
wp option delete 'mphb_global_min_days'
wp option delete 'mphb_global_max_days'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mphb_%'"
wp option delete 'mphb_booking_rules_reservation'
wp option delete 'mphb_booking_rules_seasons'
wp option delete 'mphb_booking_rules_season_priorities'
wp option delete 'mphb_payment_gateway_stripe_checkout_image_url'
wp option delete 'mphb_payment_gateway_stripe_allow_remember_me'
wp option delete 'mphb_payment_gateway_stripe_need_billing_address'
wp option delete 'mphb_payment_gateway_stripe_use_bitcoin'
wp option delete 'mphb_scheduled_version'
wp option delete 'mphb_upgrade_queue_size'
wp option delete 'mphb_wizard_passed'
wp option delete 'mphb_custom_roles_version'

# Delete Transients
wp transient delete 'mphb_extensions'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'mphb_wp_session_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'api_key_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'api_key_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'api_key_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'api_key_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_room_type_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_room_type_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_room_type_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_room_type_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_booking_internal_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_booking_internal_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_booking_internal_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_booking_internal_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_booking_price_breakdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_booking_price_breakdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_booking_price_breakdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_booking_price_breakdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_wait_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_wait_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_wait_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_wait_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_pending_expired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_pending_expired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_pending_expired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_pending_expired'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_logs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_logs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_logs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_logs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_is_authorized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_is_authorized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_is_authorized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_is_authorized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_services'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_season_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_season_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_season_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_season_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_room_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_room_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_room_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_room_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_room_rate_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_room_rate_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_room_rate_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_room_rate_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_coupon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_coupon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_coupon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_coupon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_booking_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_booking_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_booking_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_booking_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_room_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_room_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_room_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_room_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_rate_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_rate_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_rate_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_rate_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_services'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_include_room_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_include_room_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_include_room_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_include_room_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_public'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_public'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_public'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_public'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_orderby'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_orderby'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_orderby'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_orderby'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_default_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_default_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_default_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_default_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_check_in_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_check_in_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_check_in_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_check_in_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_check_out_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_check_out_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_check_out_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_check_out_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_address1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_address1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_address1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_address1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_total_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_total_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_total_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_total_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_ical_prodid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_ical_prodid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_ical_prodid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_ical_prodid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_ical_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_ical_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_ical_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_ical_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_ical_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_ical_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_ical_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_ical_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_checkout_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_checkout_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_checkout_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_checkout_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_sync_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_sync_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_sync_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_sync_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_sync_queue_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_sync_queue_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_sync_queue_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_sync_queue_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_include_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_include_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_include_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_include_services'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_include_fees'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_include_fees'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_include_fees'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_include_fees'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_room_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_room_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_room_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_room_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_service_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_service_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_service_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_service_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_fee_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_fee_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_fee_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_fee_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_room_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_room_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_room_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_room_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_service_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_service_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_service_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_service_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_fee_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_fee_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_fee_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_fee_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_min_days_before_check_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_min_days_before_check_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_min_days_before_check_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_min_days_before_check_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_max_days_before_check_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_max_days_before_check_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_max_days_before_check_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_max_days_before_check_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_min_nights'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_min_nights'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_min_nights'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_min_nights'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_max_nights'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_max_nights'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_max_nights'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_max_nights'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_check_in_date_after'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_check_in_date_after'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_check_in_date_after'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_check_in_date_after'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_check_out_date_before'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_check_out_date_before'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_check_out_date_before'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_check_out_date_before'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_gateway_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_gateway_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_gateway_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_gateway_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_payment_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_payment_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_payment_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_payment_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_adults'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_adults'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_adults'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_adults'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_children'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_guest_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_guest_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_guest_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_guest_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mphb_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mphb_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mphb_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mphb_uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_adults_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_adults_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_adults_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_adults_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_children_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_children_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_children_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_children_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_total_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_total_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_total_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_total_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_base_adults_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_base_adults_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_base_adults_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_base_adults_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_base_children_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_base_children_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_base_children_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_base_children_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_bed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_bed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_bed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_bed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_repeat_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_repeat_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_repeat_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_repeat_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_repeat_until_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_repeat_until_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_repeat_until_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_repeat_until_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_price_periodicity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_price_periodicity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_price_periodicity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_price_periodicity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_min_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_min_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_min_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_min_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_max_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_max_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_max_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_max_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_is_auto_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_is_auto_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_is_auto_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_is_auto_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_price_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_price_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_price_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_price_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_export_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_export_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_export_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_export_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_display_imported_bookings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_display_imported_bookings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_display_imported_bookings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_display_imported_bookings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_adults'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_adults'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_adults'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_adults'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mphb_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mphb_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mphb_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mphb_children'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
