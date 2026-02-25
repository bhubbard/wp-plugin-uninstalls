#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mfw_radio_switch_demo'
wp option delete 'wps_mfw_enable_google_recaptcha'
wp option delete 'wps_membership_enable_api_settings'
wp option delete 'wps_membership_api_consumer_secret_keys'
wp option delete 'wps_mfw_site_captcha_key'
wp option delete 'wps_membership_default_product'
wp option delete 'wps_membership_global_options'
wp option delete 'wps_membership_enable_plugin'
wp option delete 'wps_membership_delete_data'
wp option delete 'wps_membership_email_subject'
wp option delete 'wps_membership_email_content'
wp option delete 'wps_membership_for_woo_delete_data'
wp option delete 'wps_membership_attach_invoice'
wp option delete 'wps_membership_invoice_address'
wp option delete 'wps_membership_invoice_phone'
wp option delete 'wps_membership_invoice_email'
wp option delete 'wps_membership_invoice_logo'
wp option delete 'wps_membership_create_user_after_payment'
wp option delete 'wps_membership_allow_cancel_membership'
wp option delete 'wps_membership_create_member_on_processing'
wp option delete 'wps_msfw_enable_product_limit_restriction_globally'
wp option delete 'wps_msfw_global_product_purchase_limit_qty'
wp option delete 'mfw_enable_tracking'
wp option delete 'wps_membership_default_plans_page'
wp option delete 'wps_msfw_enable_members_dashboard'
wp option delete 'wps_msfw_dashboard_color'
wp option delete 'wps_msfw_enable_new_layout_settings'
wp option delete 'wps_msfw_new_layout_color'
wp option delete 'wps_mfw_show_active_membership_section'
wp option delete 'wps_mfw_show_active_subscription_section'
wp option delete 'wps_mfw_show_cart_max_discount_section'
wp option delete 'wps_mfw_mute_offer_notify'
wp option delete 'wps_membership_enable_other_settings'
wp option delete 'wps_msfw_page_for_redirection_user'
wp option delete 'wps_show_header_on_membership_page'
wp option delete 'wps_show_footer_on_membership_page'
wp option delete 'wps_msfw_enable_to_rewards_one_time_coupon'
wp option delete 'wps_msfw_one_time_coupon_amount'
wp option delete 'wps_msfw_enable_to_show_members_community'
wp option delete 'wps_msfw_user_community_bg_image'
wp option delete 'wps_membership_plan_page_temp'
wp option delete 'wps_membership_change_buy_now_text'
wp option delete 'wps_membership_plan_page_dark_mode'
wp option delete 'wps_msfw_enable_pdf_icon_for_member_users'
wp option delete 'wps_msfw_restrict_payment_via_wallet'
wp option delete 'wps_wpr_enable_whatsapp_api_feature'
wp option delete 'wps_wpr_whatsapp_access_token'
wp option delete 'wps_wpr_whatsapp_phone_num_id'
wp option delete 'wps_wpr_whatsapp_msg_temp_name'
wp option delete 'wps_wpr_enable_sms_api_feature'
wp option delete 'wps_wpr_sms_account_sid'
wp option delete 'wps_wpr_sms_auth_token'
wp option delete 'wps_wpr_sms_twilio_num_id'
wp option delete 'wps_wpr_enable_sms_btw_comm_user'
wp option delete 'wps_wpr_enable_email_api_feature'
wp option delete 'wps_wpr_offer_message'
wp option delete 'wps_mfw_enable_override_login_signup'
wp option delete 'wps_mfw_user_welcome_msg'
wp option delete 'wps_mfw_login_form_color'
wp option delete 'wps_mfw_captcha_secret_key'
wp option delete 'wps_msfw_enable_assign_default_membership_setting'
wp option delete 'wps_msfw_membership_assign_to_new_user'
wp option delete 'wps_msfw_show_members_details_on_buddy_dash'
wp option delete 'wps_msfw_restrict_buddy_dashboard'
wp option delete 'wps_msfw_redirect_buddy_press_user'
wp option delete 'wps_msfw_enable_to_add_dummy_members_in_buddy_group'
wp option delete 'wps_msfw_members_dummy_buddy_groups'
wp option delete 'wpswings_tracker_last_send'
wp option delete 'user_password'
wp option delete 'user_name'
wp option delete 'firstname'
wp option delete 'email'
wp option delete 'desc'
wp option delete 'age'
wp option delete 'first_checkbox'
wp option delete 'Mem_Plan_Amount'
wp option delete 'Mem_Plan_Title'
wp option delete 'Mem_Plan_Product'
wp option delete 'mfw_mfw_plugin_standard_multistep_done'
wp option delete 'wps_mfwp_license_key'
wp option delete 'wps_mfwp_license_check'
wp option delete 'wps_base_url_for_csv_upload'
wp option delete 'wps_base_url_for_csv_upload_subfolder'
wp option delete 'index_file_created'
wp option delete 'mwb_membership_default_plans_page'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_email_from_address'
wp option delete 'wps_mfw_send_welcome_mail'
wp option delete 'wps_mfw_mail_welcome_body'
wp option delete 'wps_mfw_image_text_url'
wp option delete 'wps_mfw_mail_welcome_subject'
wp option delete 'wps_mfw_onboarding_data_skipped'
wp option delete 'wps_mfw_onboarding_data_sent'
wp option delete 'wps_mfw_license_key'
wp option delete 'wps_wsfw_enable'
wp option delete 'wps_all_plugins_active'
wp option delete 'wps_wgm_notify_new_banner_id'
wp option delete 'wps_wgm_notify_new_banner_image'
wp option delete 'wps_wgm_notify_new_banner_url'
wp option delete 'wps_wgm_notify_hide_baneer_notification'
wp option delete 'all_subscription_plan'
wp option delete 'wps_mfw_cart_discount'
wp option delete 'wps_membership_number_of_expiry_days'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'wp_user_roles'

# Clear Cron Jobs
wp cron event delete 'wpswings_tracker_send_event'
wp cron event delete 'wps_membership_expiry_check'
wp cron event delete 'wps_wgm_check_for_notification_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfw_membership_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfw_membership_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfw_membership_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfw_membership_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_member'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_member'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_member'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_member'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mfw_stop_whatsapp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mfw_stop_whatsapp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mfw_stop_whatsapp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mfw_stop_whatsapp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mfw_stop_sms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mfw_stop_sms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mfw_stop_sms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mfw_stop_sms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mfw_email_sms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mfw_email_sms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mfw_email_sms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mfw_email_sms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_one_time_coupon_assignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_one_time_coupon_assignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_one_time_coupon_assignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_one_time_coupon_assignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mfw_send_welcome_mail_once_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mfw_send_welcome_mail_once_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mfw_send_welcome_mail_once_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mfw_send_welcome_mail_once_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_created_by_membership'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_created_by_membership'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_created_by_membership'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_created_by_membership'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_msfw_cancel_membership_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_msfw_cancel_membership_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_msfw_cancel_membership_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_msfw_cancel_membership_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_msfw_one_time_coupon_assign_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_msfw_one_time_coupon_assign_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_msfw_one_time_coupon_assign_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_msfw_one_time_coupon_assign_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_is_user_block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_is_user_block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_is_user_block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_is_user_block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mfw_welcome_mail_sended'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mfw_welcome_mail_sended'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mfw_welcome_mail_sended'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mfw_welcome_mail_sended'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plan_obj'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plan_obj'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plan_obj'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plan_obj'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'member_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'member_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'member_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'member_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'members_tnx_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'members_tnx_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'members_tnx_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'members_tnx_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_mfw_total_discount_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_mfw_total_discount_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_mfw_total_discount_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_mfw_total_discount_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_points'"
