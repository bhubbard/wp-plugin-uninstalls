#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smsalert_activation_date'
wp option delete 'smsalert_do_activation_redirect'
wp option delete 'ab_cart_fc_captured_abandoned_cart_count'
wp option delete 'cart_captured_abandoned_cart_count'
wp option delete 'smsalert_message'
wp option delete 'smsalert_gateway'
wp option delete 'smsalert_general'
wp option delete 'smsalert_upgrade_settings'
wp option delete 'widget_smsalert_widget'
wp option delete 'smsalert_sync'
wp option delete 'smsalert_background_task'
wp option delete 'smsalert_background_dBal_task'
wp option delete 'dismiss_chatondesk_notice'
wp option delete 'smsalert_sandbox_mode'
wp option delete 'wpam_auto_aff_approve_enabled'
wp option delete 'smsalert_alb_reminder_scheduler'
wp option delete 'smsalert_bc_reminder_scheduler'
wp option delete 'smsalert_bcc_reminder_scheduler'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'smsalert_sms_c7_%'"
wp option delete 'smsalert_eap_reminder_scheduler'
wp option delete 'smsalert_fsb_reminder_scheduler'
wp option delete 'smsalert_mm_renewal_scheduler'
wp option delete 'smsalert_pmp_renewal_scheduler'
wp option delete 'smsalert_pmp_reminder_scheduler'
wp option delete 'pie_fields'
wp option delete 'smsalert_qr_reminder_scheduler'
wp option delete 'smsalert_rr_reminder_scheduler'
wp option delete 'smsalert_sln_reminder_scheduler'
wp option delete 'smsalert_ssa_reminder_scheduler'
wp option delete 'smsalert_adv_renewal_scheduler'
wp option delete 'smsalert_adv_reminder_scheduler'
wp option delete 'smsalert_wcf_reminder_scheduler'
wp option delete 'smsalert_sms_notification'
wp option delete 'smsalert_new_application_sms_status'
wp option delete 'smsalert_new_application_admin_sms_status'
wp option delete 'smsalert_new_application_candidate_sms_status'
wp option delete 'smsalert_new_application_sms'
wp option delete 'smsalert_new_application_admin_sms'
wp option delete 'smsalert_new_application_candidate_sms'
wp option delete 'smsalert_job_approve_customer_sms_status'
wp option delete 'smsalert_job_approve_sms_status'
wp option delete 'smsalert_job_approve_customer_sms'
wp option delete 'smsalert_job_approve_sms'
wp option delete 'smsalert_new_job_sms_status'
wp option delete 'smsalert_edit_job_sms_status'
wp option delete 'smsalert_new_job_customer_sms_status'
wp option delete 'smsalert_edit_job_customer_sms_status'
wp option delete 'smsalert_new_job_customer_sms'
wp option delete 'smsalert_new_job_sms'
wp option delete 'smsalert_edit_job_customer_sms'
wp option delete 'smsalert_edit_job_sms'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'smsalert_cod_to_prepaid_scheduler'
wp option delete 'smsalert_otp_user_update'
wp option delete 'smsalert_defaultuserrole'
wp option delete 'smsalert_abandoned_cart_scheduler'
wp option delete 'smsalert_review_not_show_again'
wp option delete 'smsalert_instocksettings'
wp option delete 'onboarding-data-skipped'
wp option delete 'woocommerce_enable_myaccount_registration'
wp option delete 'edd_settings'
wp option delete 'smsalert_wc_renewal_scheduler'
wp option delete 'smsalert_wcbk_reminder_scheduler'
wp option delete 'cartbounty_notification_frequency'

# Delete Transients
wp transient delete 'cart_captured_abandoned_cart_count'

# Clear Cron Jobs
wp cron event delete 'smsalert_balance_notify'
wp cron event delete 'smsalert_followup_sms'
wp cron event delete 'ab_cart_notification_sendsms_hook'
wp cron event delete 'cod_to_prepaid_cart_notification_sendsms_hook'
wp cron event delete 'booking_reminder_sendsms_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buyer_sms_notify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buyer_sms_notify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buyer_sms_notify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buyer_sms_notify'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpas_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpas_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpas_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpas_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ga_appointment_gf_entry_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ga_appointment_gf_entry_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ga_appointment_gf_entry_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ga_appointment_gf_entry_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_bphone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_bphone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_bphone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_bphone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_bemail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_bemail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_bemail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_bemail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payments_listing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payments_listing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payments_listing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payments_listing_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adverts_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adverts_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adverts_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adverts_visible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adverts_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adverts_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adverts_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adverts_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adverts_person'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adverts_person'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adverts_person'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adverts_person'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_adverts_pricing_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_adverts_pricing_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_adverts_pricing_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_adverts_pricing_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_reservation_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_reservation_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_reservation_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_reservation_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_candidate_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_candidate_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_candidate_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_candidate_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Full name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Full name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Full name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Full name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_candidate_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_candidate_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_candidate_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_candidate_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_applied_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_applied_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_applied_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_applied_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_travel_engine_booking_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_travel_engine_booking_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_travel_engine_booking_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_travel_engine_booking_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_travel_engine_booking_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_travel_engine_booking_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_travel_engine_booking_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_travel_engine_booking_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smsalert_post_order_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smsalert_post_order_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smsalert_post_order_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smsalert_post_order_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smsalert_review_remind_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smsalert_review_remind_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smsalert_review_remind_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smsalert_review_remind_later'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smsalert_instock_pid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smsalert_instock_pid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smsalert_instock_pid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smsalert_instock_pid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sa_deliverycode_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sa_deliverycode_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sa_deliverycode_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sa_deliverycode_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sa_deliverycode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sa_deliverycode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sa_deliverycode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sa_deliverycode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddwc_driver_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddwc_driver_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddwc_driver_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddwc_driver_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aftership_tracking_provider_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fslm_json_license_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fslm_json_license_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fslm_json_license_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fslm_json_license_details'"
