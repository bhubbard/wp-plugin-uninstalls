-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rahrayan_2fa_text', 'rahrayan_admin', 'rahrayan_comment_text', 'rahrayan_comment', 'rahrayan_2fa', 'rahrayan_register_text', 'rahrayan_register', 'rahrayan_login_text', 'rahrayan_login', 'rahrayan_edd_text', 'rahrayan_edd', 'rahrayan_wc2', 'rahrayan_wc2_text', 'rahrayan_wc', 'rahrayan_wc_text', 'rahrayan_wc3', 'rahrayan_wc3_text', 'rahrayan_wc4', 'rahrayan_wc4_text', 'rahrayan_wc5_text', 'rahrayan_wc5', 'rahrayan_wc_mobile_verification', 'woocommerce_myaccount_page_id', 'rahrayan_wc_mobile_verification_text', 'rahrayan_send_text', 'rahrayan_send', 'rahrayan_cf7', 'rahrayan_gravity_forms', 'rahrayan_code', 'rahrayan_code_text', 'rahrayan_sync', 'rahrayan_group', 'rahrayan_welcome', 'rahrayan_welcome_text', 'rahrayan_nregister', 'rahrayan_nregister_text', 'rahrayan_mfield', 'rahrayan_register2', 'rahrayan_register2_text', 'rahrayan_lostpw', 'rahrayan_lostpw_text', 'rahrayan_update_period', 'rahrayan_username', 'rahrayan_password', 'rahrayan_tel', 'rahrayan_groups', 'rahrayan_sig', 'rahrayan_credit', 'rahrayan_page', 'rahrayan_iborder');
DELETE FROM wp_options WHERE option_name IN ('rahrayan_ihborder', 'rahrayan_sbg', 'rahrayan_shbg', 'rahrayan_sborder', 'rahrayan_shborder', 'rahrayan_fontc', 'rahrayan_cfontc', 'rahrayan_fonts', 'rahrayan_fontm', 'rahrayan_form', 'rahrayan_border', 'rahrayan_radius', 'rahrayan_ilbg', 'rahrayan_ilhbg', 'rahrayan_ibg', 'rahrayan_ihbg', 'rahrayan_widget');
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_rahrayan_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_rahrayan_mobile_field_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_rahrayan_user_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mpmobile', 'mp_wc_new_sms_sent', 'mp_last_verified_mobile', 'billing_phone', 'mp_verification_code', 'billing_first_name', 'billing_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('mpmobile', 'mp_wc_new_sms_sent', 'mp_last_verified_mobile', 'billing_phone', 'mp_verification_code', 'billing_first_name', 'billing_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('mpmobile', 'mp_wc_new_sms_sent', 'mp_last_verified_mobile', 'billing_phone', 'mp_verification_code', 'billing_first_name', 'billing_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mpmobile', 'mp_wc_new_sms_sent', 'mp_last_verified_mobile', 'billing_phone', 'mp_verification_code', 'billing_first_name', 'billing_last_name');

