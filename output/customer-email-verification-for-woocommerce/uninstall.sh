#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'cev_skip_verification_for_selected_roles'
wp option delete 'cev_verification_popup_overlay_background_color'
wp option delete 'cev_button_color_widget_header'
wp option delete 'cev_button_text_color_widget_header'
wp option delete 'cev_button_text_size_widget_header'
wp option delete 'cev_widget_header_image_width'
wp option delete 'cev_button_text_header_font_size'
wp option delete 'wc_cev_pro_ignore_notice_2.6.8'
wp option delete 'cev_enable_email_verification'
wp option delete 'cev_email_for_verification'
wp option delete 'cev_email_for_verification_mode'
wp option delete 'cev_verification_header'
wp option delete 'cev_verification_message'
wp option delete 'cev_verification_code_expiration'
wp option delete 'cev_verification_email_subject'
wp option delete 'cev_verification_email_heading'
wp option delete 'cev_verification_email_body'
wp option delete 'cev_verification_success_message'
wp option delete 'cev_enter_account_after_registration'
wp option delete 'cev_resend_verification_email_message'
wp option delete 'cev_verified_user_message'
wp option delete 'cev_redirect_page_after_varification'
wp option delete 'cev_free_update_version'
wp option delete 'cev_verification_code_length'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_from_name'
wp option delete 'cev_verification_popup_background_color'
wp option delete 'cev_verification_widget_footer'
wp option delete 'cev_verification_image'
wp option delete 'cev_content_align'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_data_selector'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_optin_email_notification'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_usage_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_tracker_last_send'"

# Delete Transients
wp transient delete 'cev_settings_admin_notice_ignore'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email_verification_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email_verification_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email_verification_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email_verification_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cev_email_verification_pin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cev_email_verification_pin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cev_email_verification_pin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cev_email_verification_pin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cev_user_resend_times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cev_user_resend_times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cev_user_resend_times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cev_user_resend_times'"
