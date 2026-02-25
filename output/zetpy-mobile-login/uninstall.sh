#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zetpy_ml_sms_provider'
wp option delete 'zetpy_ml_isms_username'
wp option delete 'zetpy_ml_isms_password'
wp option delete 'zetpy_ml_isms_sender_id'
wp option delete 'zetpy_ml_twilio_account_sid'
wp option delete 'zetpy_ml_twilio_auth_token'
wp option delete 'zetpy_ml_twilio_from_number'
wp option delete 'zetpy_ml_vonage_api_key'
wp option delete 'zetpy_ml_vonage_api_secret'
wp option delete 'zetpy_ml_vonage_from'
wp option delete 'zetpy_ml_otp_expiry'
wp option delete 'zetpy_ml_country_codes'
wp option delete 'zetpy_ml_otp_secret_key'
wp option delete 'zetpy_ml_enable_math_captcha'
wp option delete 'zetpy_ml_redirect_my_account'
wp option delete 'zetpy_ml_replace_checkout_login'
wp option delete 'zetpy_ml_replace_checkout_registration'
wp option delete 'zetpy_ml_hide_password_fields'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'zetpy_ml_otp_method'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_zetpy_ml_captcha_%' OR option_name LIKE '_site_transient_zetpy_ml_captcha_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_number_formatted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_number_formatted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_number_formatted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_number_formatted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
