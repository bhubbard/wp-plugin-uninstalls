#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rahrayan_2fa_text'
wp option delete 'rahrayan_admin'
wp option delete 'rahrayan_comment_text'
wp option delete 'rahrayan_comment'
wp option delete 'rahrayan_2fa'
wp option delete 'rahrayan_register_text'
wp option delete 'rahrayan_register'
wp option delete 'rahrayan_login_text'
wp option delete 'rahrayan_login'
wp option delete 'rahrayan_edd_text'
wp option delete 'rahrayan_edd'
wp option delete 'rahrayan_wc2'
wp option delete 'rahrayan_wc2_text'
wp option delete 'rahrayan_wc'
wp option delete 'rahrayan_wc_text'
wp option delete 'rahrayan_wc3'
wp option delete 'rahrayan_wc3_text'
wp option delete 'rahrayan_wc4'
wp option delete 'rahrayan_wc4_text'
wp option delete 'rahrayan_wc5_text'
wp option delete 'rahrayan_wc5'
wp option delete 'rahrayan_wc_mobile_verification'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'rahrayan_wc_mobile_verification_text'
wp option delete 'rahrayan_send_text'
wp option delete 'rahrayan_send'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_rahrayan_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_rahrayan_mobile_field_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_rahrayan_user_%'"
wp option delete 'rahrayan_cf7'
wp option delete 'rahrayan_gravity_forms'
wp option delete 'rahrayan_code'
wp option delete 'rahrayan_code_text'
wp option delete 'rahrayan_sync'
wp option delete 'rahrayan_group'
wp option delete 'rahrayan_welcome'
wp option delete 'rahrayan_welcome_text'
wp option delete 'rahrayan_nregister'
wp option delete 'rahrayan_nregister_text'
wp option delete 'rahrayan_mfield'
wp option delete 'rahrayan_register2'
wp option delete 'rahrayan_register2_text'
wp option delete 'rahrayan_lostpw'
wp option delete 'rahrayan_lostpw_text'
wp option delete 'rahrayan_update_period'
wp option delete 'rahrayan_username'
wp option delete 'rahrayan_password'
wp option delete 'rahrayan_tel'
wp option delete 'rahrayan_groups'
wp option delete 'rahrayan_sig'
wp option delete 'rahrayan_credit'
wp option delete 'rahrayan_page'
wp option delete 'rahrayan_iborder'
wp option delete 'rahrayan_ihborder'
wp option delete 'rahrayan_sbg'
wp option delete 'rahrayan_shbg'
wp option delete 'rahrayan_sborder'
wp option delete 'rahrayan_shborder'
wp option delete 'rahrayan_fontc'
wp option delete 'rahrayan_cfontc'
wp option delete 'rahrayan_fonts'
wp option delete 'rahrayan_fontm'
wp option delete 'rahrayan_form'
wp option delete 'rahrayan_border'
wp option delete 'rahrayan_radius'
wp option delete 'rahrayan_ilbg'
wp option delete 'rahrayan_ilhbg'
wp option delete 'rahrayan_ibg'
wp option delete 'rahrayan_ihbg'
wp option delete 'rahrayan_widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mpmobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mpmobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mpmobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mpmobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_wc_new_sms_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_wc_new_sms_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_wc_new_sms_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_wc_new_sms_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_last_verified_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_last_verified_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_last_verified_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_last_verified_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_verification_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_verification_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_verification_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_verification_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
