#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'melipayamak_2fa_text'
wp option delete 'melipayamak_admin'
wp option delete 'melipayamak_comment_text'
wp option delete 'melipayamak_comment'
wp option delete 'melipayamak_2fa'
wp option delete 'melipayamak_register_text'
wp option delete 'melipayamak_register'
wp option delete 'melipayamak_login_text'
wp option delete 'melipayamak_login'
wp option delete 'melipayamak_edd_text'
wp option delete 'melipayamak_edd'
wp option delete 'melipayamak_wc2'
wp option delete 'melipayamak_wc2_text'
wp option delete 'melipayamak_wc'
wp option delete 'melipayamak_wc_text'
wp option delete 'melipayamak_wc3'
wp option delete 'melipayamak_wc3_text'
wp option delete 'melipayamak_wc4'
wp option delete 'melipayamak_wc4_text'
wp option delete 'melipayamak_wc5_text'
wp option delete 'melipayamak_wc5'
wp option delete 'melipayamak_wc_mobile_verification'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'melipayamak_wc_mobile_verification_text'
wp option delete 'melipayamak_send_text'
wp option delete 'melipayamak_send'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_melipayamak_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_melipayamak_mobile_field_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_melipayamak_user_%'"
wp option delete 'melipayamak_cf7'
wp option delete 'melipayamak_gravity_forms'
wp option delete 'melipayamak_code'
wp option delete 'melipayamak_code_text'
wp option delete 'melipayamak_sync'
wp option delete 'melipayamak_group'
wp option delete 'melipayamak_welcome'
wp option delete 'melipayamak_welcome_text'
wp option delete 'melipayamak_nregister'
wp option delete 'melipayamak_nregister_text'
wp option delete 'melipayamak_mfield'
wp option delete 'melipayamak_register2'
wp option delete 'melipayamak_register2_text'
wp option delete 'melipayamak_lostpw'
wp option delete 'melipayamak_lostpw_text'
wp option delete 'melipayamak_update_period'
wp option delete 'melipayamak_username'
wp option delete 'melipayamak_password'
wp option delete 'melipayamak_tel'
wp option delete 'melipayamak_update'
wp option delete 'melipayamak_groups'
wp option delete 'melipayamak_sig'
wp option delete 'melipayamak_use_voice'
wp option delete 'melipayamak_credit'
wp option delete 'melipayamak_page'
wp option delete 'melipayamak_iborder'
wp option delete 'melipayamak_ihborder'
wp option delete 'melipayamak_sbg'
wp option delete 'melipayamak_shbg'
wp option delete 'melipayamak_sborder'
wp option delete 'melipayamak_shborder'
wp option delete 'melipayamak_fontc'
wp option delete 'melipayamak_cfontc'
wp option delete 'melipayamak_fonts'
wp option delete 'melipayamak_fontm'
wp option delete 'melipayamak_form'
wp option delete 'melipayamak_border'
wp option delete 'melipayamak_radius'
wp option delete 'melipayamak_ilbg'
wp option delete 'melipayamak_ilhbg'
wp option delete 'melipayamak_ibg'
wp option delete 'melipayamak_ihbg'
wp option delete 'melipayamak_last_version'
wp option delete 'melipayamak_widget'

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
