#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hcotp_msg91_resend_timer'
wp option delete 'hcotp_email_resend_timer'
wp option delete 'hcotp_msg91_redirect_page'
wp option delete 'hcotp_msg91_sendotp_validation_msg'
wp option delete 'hcotp_msg91_verifyotp_validation_msg'
wp option delete 'hcotp_msg91_sendotp_button_text'
wp option delete 'hcotp_msg91_verifyotp_button_text'
wp option delete 'hcotp_email_otp_length'
wp option delete 'hcotp_msg91_otp_length'
wp option delete 'hcotp_msg91_selected_countries'
wp option delete 'hcotp_msg91_default_country'
wp option delete 'hcotp_msg91_flag_show'
wp option delete 'hcotp_msg91_perday_otplimit'
wp option delete 'hcotp_msg91_auth_key'
wp option delete 'hcotp_msg91_sender_id'
wp option delete 'hcotp_msg91_template_id'
wp option delete 'hcotp_whatsapp_template_name'
wp option delete 'hcotp_whatsapp_template_namespace'
wp option delete 'hcotp_whatsapp_integrated_number'
wp option delete 'hcotp_whatsapp_language_code'
wp option delete 'hcotp_review_notice_dismissed'
wp option delete 'hcotp_activation_time'
wp option delete 'hcotp_settings_migrated'
wp option delete 'hcotp_force_email_after_login'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'hcotp_email_otp_expiry'
wp option delete 'hcotp_email_template_choice'
wp option delete 'hcotp_email_otp_header_image'
wp option delete 'hcotp_email_otp_footer_image'
wp option delete 'hcotp_email_otp_subject'
wp option delete 'hcotp_email_otp_body'
wp option delete 'hcotp_email_otp_enabled'
wp option delete 'hcotp_email_perday_otplimit'
wp option delete 'hcotp_whatsapp_auth_enabled'
wp option delete 'hcotp_whatsapp_button_text'
wp option delete 'hcotp_msg91_active_tab'
wp option delete 'hcotp_msg91_top_image'
wp option delete 'hcotp_msg91_top_verify_image'
wp option delete 'hcotp_msg91_sendotp_lable'
wp option delete 'hcotp_msg91_sendotp_lable_color'
wp option delete 'hcotp_msg91_sendotp_dec'
wp option delete 'hcotp_msg91_sendotp_dec_color'
wp option delete 'hcotp_msg91_sendotp_button_color'
wp option delete 'hcotp_msg91_verifyotp_lable'
wp option delete 'hcotp_msg91_verifyotp_lable_color'
wp option delete 'hcotp_msg91_verifyotp_dec'
wp option delete 'hcotp_msg91_verifyotp_desc_color'
wp option delete 'hcotp_msg91_verifyotp_button_color'
wp option delete 'hcotp_email_sendotp_label'
wp option delete 'hcotp_email_sendotp_label_color'
wp option delete 'hcotp_email_sendotp_desc'
wp option delete 'hcotp_email_sendotp_desc_color'
wp option delete 'hcotp_email_sendotp_button_text'
wp option delete 'hcotp_email_sendotp_button_color'
wp option delete 'hcotp_email_verifyotp_lable'
wp option delete 'hcotp_email_verifyotp_lable_color'
wp option delete 'hcotp_email_verifyotp_desc'
wp option delete 'hcotp_email_verifyotp_desc_color'
wp option delete 'hcotp_email_verifyotp_buttontext'
wp option delete 'hcotp_email_verifyotp_button_color'
wp option delete 'hcotp_email_verifyotp_validation_msg'
wp option delete 'hcotp_email_top_image'
wp option delete 'hcotp_email_top_verify_image'
wp option delete 'hcotp_email_otp_header_image_width'
wp option delete 'hcotp_email_otp_header_image_height'
wp option delete 'hcotp_email_otp_footer_image_width'
wp option delete 'hcotp_email_otp_footer_image_height'
wp option delete 'hcotp_email_template_html_1'
wp option delete 'hcotp_email_template_html_2'
wp option delete 'hcotp_email_template_html_3'
wp option delete 'hcotp_msg91_verifyotp_dec_color'
wp option delete 'hcotp_msg91_sms_ncr_enable'
wp option delete 'hcotp_msg91_sms_ncr_template_id'
wp option delete 'hcotp_msg91_sms_ncr_notes'
wp option delete 'hcotp_msg91_sms_npo_enable'
wp option delete 'hcotp_msg91_sms_npo_template_id'
wp option delete 'hcotp_msg91_sms_npo_notes'
wp option delete 'hcotp_msg91_sms_osh_enable'
wp option delete 'hcotp_msg91_sms_osh_template_id'
wp option delete 'hcotp_msg91_sms_osh_notes'
wp option delete 'hcotp_msg91_sms_osh_status_slug'
wp option delete 'hcotp_msg91_sms_odl_enable'
wp option delete 'hcotp_msg91_sms_odl_template_id'
wp option delete 'hcotp_msg91_sms_odl_notes'
wp option delete 'hcotp_msg91_sms_odl_status_slug'
wp option delete 'hcotp_msg91_sms_oac_enable'
wp option delete 'hcotp_msg91_sms_oac_delay_hours'
wp option delete 'hcotp_msg91_sms_oac_template_id'
wp option delete 'hcotp_msg91_sms_oac_notes'

# Clear Cron Jobs
wp cron event delete 'hcotp_trigger_abandoned_cart_sms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otp_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otp_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otp_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otp_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hcotp_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hcotp_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hcotp_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hcotp_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hcotp_email_otp_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hcotp_email_otp_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hcotp_email_otp_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hcotp_email_otp_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hcotp_email_otp_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hcotp_email_otp_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hcotp_email_otp_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hcotp_email_otp_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hcotp_pending_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hcotp_pending_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hcotp_pending_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hcotp_pending_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hcotp_email_otp_last_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hcotp_email_otp_last_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hcotp_email_otp_last_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hcotp_email_otp_last_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hcotp_email_otp_daily'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hcotp_email_otp_daily'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hcotp_email_otp_daily'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hcotp_email_otp_daily'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hcotp_tracking_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hcotp_tracking_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hcotp_tracking_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hcotp_tracking_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hcotp_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hcotp_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hcotp_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hcotp_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hcotp_shipping_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hcotp_shipping_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hcotp_shipping_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hcotp_shipping_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
