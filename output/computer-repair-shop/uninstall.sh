#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_rb_setup_pages_once'
wp option delete 'wc_rb_status_check_page_id'
wp option delete 'wc_rb_get_feedback_page_id'
wp option delete 'wc_rb_device_booking_page_id'
wp option delete 'wc_rb_my_account_page_id'
wp option delete 'wc_rb_customer_login_page'
wp option delete 'wc_rb_list_services_page_id'
wp option delete 'wc_rb_list_parts_page_id'
wp option delete 'woocommerce_currency'
wp option delete 'wc_cr_expense_db_version'
wp option delete 'offer_pic_de'
wp option delete 'wc_cr_shop_version'
wp option delete 'wc_rb_payment_methods_active'
wp option delete 'wc_job_status_cr_notice'
wp option delete 'wcrb_attach_pdf_in_customer_emails'
wp option delete 'wcrb_next_service_date'
wp option delete 'show_pickupdate'
wp option delete 'wcrb_first_installation'
wp option delete 'menu_name_p'
wp option delete 'wc_device_label'
wp option delete 'wc_device_label_plural'
wp option delete 'wc_device_brand_label'
wp option delete 'wc_device_brand_label_plural'
wp option delete 'wc_device_type_label_plural'
wp option delete 'wcrb_turn_estimates_on'
wp option delete 'wcrb_disable_timelog'
wp option delete 'wc_file_attachment_in_job'
wp option delete 'wcrb_appointment_options_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_description'"
wp option delete 'wcrb_appointment_option_ship_terms'
wp option delete 'wcrb_time_slot_duration'
wp option delete 'wcrb_buffer_time'
wp option delete 'wcrb_max_appointments_per_day'
wp option delete 'wcrb_booking_lead_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_end_time'"
wp option delete 'wc_device_type_label'
wp option delete 'wc_booking_default_type'
wp option delete 'wc_booking_default_brand'
wp option delete 'wc_booking_default_device'
wp option delete 'booking_email_subject_to_customer'
wp option delete 'booking_email_body_to_customer'
wp option delete 'booking_email_subject_to_admin'
wp option delete 'booking_email_body_to_admin'
wp option delete 'wcrb_turn_booking_forms_to_jobs'
wp option delete 'wcrb_turn_off_other_device_brands'
wp option delete 'wcrb_turn_off_other_service'
wp option delete 'wcrb_turn_off_service_price'
wp option delete 'wcrb_turn_off_idimei_booking'
wp option delete 'wcrb_turn_off_captcha'
wp option delete 'wcrb_saved_additional_customer_fields'
wp option delete 'wcrb_customer_default_fields'
wp option delete 'wcrb_customer_field_keys'
wp option delete 'wc_rb_turn_registration_on'
wp option delete 'wc_use_taxes'
wp option delete 'wc_primary_tax'
wp option delete 'wc_note_label'
wp option delete 'wc_pin_code_label'
wp option delete 'wc_device_id_imei_label'
wp option delete 'wc_pin_code_field'
wp option delete 'wc_pin_code_show_inv'
wp option delete 'wc_offer_pick_deli'
wp option delete 'wc_one_day'
wp option delete 'wc_one_week'
wp option delete 'wc_offer_laptop'
wp option delete 'wc_pick_delivery_charges'
wp option delete 'wc_enable_devices_as_woo_products'
wp option delete '_extra_device_fields'
wp option delete 'wcrb_special_PR_Search_class'
wp option delete 'wc_booking_on_account_page_status'
wp option delete 'estimate_email_subject_to_customer'
wp option delete 'estimate_email_body_to_customer'
wp option delete 'estimate_approve_email_subject_to_admin'
wp option delete 'estimate_approve_email_body_to_admin'
wp option delete 'estimate_reject_email_subject_to_admin'
wp option delete 'estimate_reject_email_body_to_admin'
wp option delete 'wc_prices_inclu_exclu'
wp option delete 'wcrb_special_ADDPRODUCT_ID'
wp option delete 'wcrb_disable_email_for_payment_link'
wp option delete 'wcrb_payment_link_email_subject'
wp option delete 'wcrb_payment_link_email_body'
wp option delete 'wcrb_payment_link_sms_enabled'
wp option delete 'wcrb_payment_link_sms_text'
wp option delete 'wc_cr_selected_currency'
wp option delete 'wc_rb_sms_active'
wp option delete 'wc_rb_business_name'
wp option delete 'wc_rb_business_phone'
wp option delete 'wc_rb_business_address'
wp option delete 'computer_repair_email'
wp option delete 'wc_rb_io_thanks_msg'
wp option delete 'wc_estimates_on_account_page_status'
wp option delete 'wcrb_disable_reviews_myaccount_page'
wp option delete 'wc_account_booking_form'
wp option delete 'wcrb_send_feedback_request_jobstatus'
wp option delete 'wc_repair_order_print_size'
wp option delete 'wc_rb_cr_display_add_on_ro_cu'
wp option delete 'wc_rb_cr_display_add_on_ro'
wp option delete 'wc_rb_ro_thanks_msg'
wp option delete 'wcrb_review_notification_sms_on'
wp option delete 'wcrb_review_notification_email_on'
wp option delete 'wcrb_send_feedback_interval'
wp option delete 'wcrb_feedback_email_notification_message'
wp option delete 'feedback_email_subject'
wp option delete 'wcrb_feedback_sms_notification_message'
wp option delete 'wc_rb_sms_gateway'
wp option delete 'wc_rb_job_status_include'
wp option delete 'last_sms_response'
wp option delete 'wc_rb_twilio_account_sid'
wp option delete 'wc_rb_twilio_auth_token'
wp option delete 'wc_rb_twilio_from_number'
wp option delete 'wc_rb_releans_sender_id'
wp option delete 'wc_rb_releans_api_key'
wp option delete 'wc_rb_bulkgate_application_id'
wp option delete 'wc_rb_bulkgate_application_token'
wp option delete 'wc_rb_bulkgate_sender'
wp option delete 'wc_rb_smshosting_username'
wp option delete 'wc_rb_smshosting_password'
wp option delete 'wc_rb_smshosting_sender'
wp option delete 'wc_rb_smschef_secret'
wp option delete 'wc_rb_smschef_mode'
wp option delete 'wc_rb_smschef_sim'
wp option delete 'wc_rb_smschef_device_id'
wp option delete 'wc_rb_capitolemobile_username'
wp option delete 'wc_rb_capitolemobile_password'
wp option delete 'wc_rb_capitolemobile_sender'
wp option delete 'wc_rb_bitelietuva_username'
wp option delete 'wc_rb_bitelietuva_password'
wp option delete 'wcrb_textmecoil_username'
wp option delete 'wcrb_textmecoil_source'
wp option delete 'wcrb_textmecoil_adminusername'
wp option delete 'wcrb_textmecoil_adminpass'
wp option delete 'wcrb_job_status_delivered'
wp option delete 'wcrb_job_status_cancelled'
wp option delete 'wcrb_delivery_date_label'
wp option delete 'wcrb_pickup_date_label'
wp option delete 'wcrb_nextservice_date_label'
wp option delete 'wc_service_sidebar_description'
wp option delete 'wc_service_booking_heading'
wp option delete 'wc_booking_on_service_page_status'
wp option delete 'wc_service_booking_form'
wp option delete 'wcrb_pickup_signature_status'
wp option delete 'wcrb_pickup_signature_job_status'
wp option delete 'wcrb_pickup_signature_email_subject'
wp option delete 'wcrb_pickup_after_signature_status'
wp option delete 'wcrb_delivery_signature_status'
wp option delete 'wcrb_delivery_signature_job_status'
wp option delete 'wcrb_delivery_signature_email_subject'
wp option delete 'wcrb_delivery_after_signature_status'
wp option delete 'wcrb_pickup_signature_sms_text'
wp option delete 'wcrb_delivery_signature_sms_text'
wp option delete 'wcrb_pickup_signature_email_template'
wp option delete 'wcrb_delivery_signature_email_template'
wp option delete 'wcrb_casenumber_label'
wp option delete 'wcrb_primary_color'
wp option delete 'wcrb_secondary_color'
wp option delete 'update_tax_states'
wp option delete 'wcrb_timelog_tax'
wp option delete 'wcrb_timelog_job_status'
wp option delete 'wcrb_timelog_activity_types'
wp option delete 'wc_cr_currency_position'
wp option delete 'wc_cr_thousand_separator'
wp option delete 'wc_cr_decimal_separator'
wp option delete 'wc_cr_number_of_decimals'
wp option delete 'computer_repair_logo'
wp option delete 'wc_rb_gdpr_acceptance_link'
wp option delete 'wc_rb_gdpr_acceptance_link_label'
wp option delete 'wc_rb_gdpr_acceptance'
wp option delete 'case_number_length'
wp option delete 'case_number_prefix'
wp option delete 'wc_primary_country'
wp option delete 'wc_enable_woo_products'
wp option delete 'wcrb_disable_statuscheck_serial'
wp option delete 'repair_order_type'
wp option delete 'wb_rb_invoice_type'
wp option delete 'wc_business_terms'
wp option delete 'wcrb_add_invoice_qr_code'
wp option delete 'show_deliverydate'
wp option delete 'show_nextservicedate'
wp option delete 'wcrb_invoice_disclaimer'
wp option delete 'does_this_workd'
wp option delete 'woocommerce_manage_stock'
wp option delete 'wc_cr_license_details'
wp option delete 'url_shortener_mappings'
wp option delete 'customersUpdated'
wp option delete 'shippingupdated'
wp option delete 'wcrb_jobs_migration_completed'
wp option delete 'wcrb_jobs_migration_count'
wp option delete 'metabox_reset_version'
wp option delete 'wc_casenumber_label'
wp option delete 'wc_service_label'
wp option delete 'wc_service_label_plural'
wp option delete 'wc_cr_purchase_email'
wp option delete 'wc_cr_purchase_code'
wp option delete '_last_license_checked'
wp option delete 'wcrb_activation_response'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_repairbuddy_captcha_%' OR option_name LIKE '_site_transient_repairbuddy_captcha_%'"

# Clear Cron Jobs
wp cron event delete 'wcrb_review_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email_optout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email_optout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email_optout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email_optout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_case_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_case_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_case_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_case_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_status_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_status_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_status_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_status_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone_ol'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone_ol'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone_ol'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone_ol'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone_ol'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone_ol'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone_ol'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone_ol'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phoneNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phoneNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phoneNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phoneNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phoneNumber_ol'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phoneNumber_ol'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phoneNumber_ol'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phoneNumber_ol'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'type_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'type_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'type_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'type_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'type_status_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'type_status_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'type_status_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'type_status_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'brand_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'brand_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'brand_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'brand_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'brand_status_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'brand_status_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'brand_status_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'brand_status_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'device_status_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'device_status_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'device_status_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'device_status_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'device_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'device_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'device_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'device_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_part_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_part_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_part_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_part_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_manufacturing_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_manufacturing_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_manufacturing_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_manufacturing_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_stock_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_stock_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_stock_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_stock_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_wc_use_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_wc_use_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_wc_use_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_wc_use_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_warranty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_warranty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_warranty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_warranty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_core_features'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_core_features'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_core_features'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_core_features'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_installation_charges'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_installation_charges'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_installation_charges'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_installation_charges'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_installation_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_installation_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_installation_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_installation_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sub_parts_arr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sub_parts_arr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sub_parts_arr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sub_parts_arr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manufacturing_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manufacturing_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manufacturing_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manufacturing_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_disable_in_booking_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_disable_in_booking_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_disable_in_booking_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_disable_in_booking_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_device_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_device_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_device_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_device_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pickup_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pickup_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pickup_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pickup_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_technician'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_technician'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_technician'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_technician'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_case_detail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_case_detail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_case_detail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_case_detail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_prices_inclu_exclu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_prices_inclu_exclu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_prices_inclu_exclu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_prices_inclu_exclu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_job_extra_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_job_extra_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_job_extra_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_job_extra_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcrb_order_type_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcrb_order_type_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcrb_order_type_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcrb_order_type_select'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcrb_warranty_claim_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcrb_warranty_claim_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcrb_warranty_claim_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcrb_warranty_claim_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_estimate_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_estimate_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_estimate_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_estimate_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_estimate_ticket_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_estimate_ticket_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_estimate_ticket_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_estimate_ticket_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_device_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_device_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_device_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_device_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcrb_job_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcrb_job_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcrb_job_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcrb_job_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_reminder_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_reminder_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_reminder_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_reminder_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manufacturing_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manufacturing_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manufacturing_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manufacturing_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stock_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stock_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stock_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stock_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_part_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_part_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_part_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_part_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_payment_status_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_payment_status_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_payment_status_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_payment_status_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_review_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_review_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_review_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_review_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_review_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_review_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_review_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_review_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_device_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_device_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_device_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_device_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_review_feedback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_review_feedback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_review_feedback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_review_feedback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_first_review_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_first_review_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_first_review_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_first_review_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_second_review_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_second_review_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_second_review_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_second_review_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_service_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_service_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_service_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_service_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smschef_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smschef_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smschef_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smschef_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smschef_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smschef_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smschef_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smschef_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smschef_device_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smschef_device_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smschef_device_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smschef_device_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smschef_sim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smschef_sim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smschef_sim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smschef_sim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_account_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_account_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_account_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_account_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcrb_theme_preference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcrb_theme_preference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcrb_theme_preference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcrb_theme_preference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_next_service_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_next_service_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_next_service_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_next_service_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_job_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_job_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_job_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_job_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_estimate_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_estimate_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_estimate_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_estimate_expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_completed_by_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_completed_by_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_completed_by_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_completed_by_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_completed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_completed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_completed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_completed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_signature_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_signature_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_signature_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_signature_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_signature_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_signature_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_signature_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_signature_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'technician_hourly_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'technician_hourly_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'technician_hourly_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'technician_hourly_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_hourly_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_hourly_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_hourly_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_hourly_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcrb_inventory_managed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcrb_inventory_managed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcrb_inventory_managed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcrb_inventory_managed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_use_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_use_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_use_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_use_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_device_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_device_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_device_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_device_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zip_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zip_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zip_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zip_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'state_province'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'state_province'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'state_province'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'state_province'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_warranty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_warranty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_warranty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_warranty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_core_features'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_core_features'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_core_features'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_core_features'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_installation_charges'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_installation_charges'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_installation_charges'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_installation_charges'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_installation_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_installation_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_installation_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_installation_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_time_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_time_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_time_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_time_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pick_deliver'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pick_deliver'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pick_deliver'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pick_deliver'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_laptop_rental'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_laptop_rental'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_laptop_rental'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_laptop_rental'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_device_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_device_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_device_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_device_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_appointment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_appointment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_appointment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_appointment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_avatar_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_avatar_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_avatar_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_avatar_url'"
