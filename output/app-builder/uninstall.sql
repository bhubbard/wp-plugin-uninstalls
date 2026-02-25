-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('app_builder_cirilla_version', 'app_builder_template_active_id', 'app_builder_configs', 'app_builder_license', 'app_builder_app', 'app_builder_allowed_origins', 'app_builder_enable_generate_key', 'app_builder_captcha', 'woocommerce_allowed_countries', 'woocommerce_ship_to_countries', 'woocommerce_review_rating_verification_required', 'app_builder_settings', 'referral_discount_upto', 'app_builder_integrations', 'woocommerce_checkout_page_id', 'woocommerce_paytm_settings', 'wc_sc_setting_max_coupon_to_show', 'smart_coupons_show_coupon_description', 'wpclv_settings', 'woocommerce_price_num_decimals', '_mp_access_token_prod', 'checkbox_checkout_test_mode', '_mp_access_token_test', '_mp_store_identificator', 'woocommerce_currency_pos', 'gmw_options', 'woocommerce_currency', 'app_builder_test_site', 'app_builder_upgrader_sync');
DELETE FROM wp_options WHERE option_name LIKE 'wpclv_%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'app_builder_forgot_password_attempt_%';
DELETE FROM wp_options WHERE option_name LIKE 'app_builder_forgot_password_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image', '_wp_attachment_image_alt', 'thumbnail_id', 'app_builder_delete_user_otp', 'app_builder_delete_user_otp_sent_time', 'app_builder_login_type', 'app_builder_login_avatar', 'digt_countrycode', 'digits_phone_no', 'digits_phone', 'app_builder_subscribe', 'app_builder_agree_privacy_term', 'custom_avatar', 'custom_avatar_updated', 'app_version', 'platform', 'envoirment', 'force_upgrade', 'updated_date', 'sync', 'url_download', 'referral_key', 'mwb_crp_coupon_user_id', 'wc_sc_expiry_time', 'wpclv_link', 'wcfmmp_profile_settings', 'wcfm_policy_vendor_options', 'store_name', 'wcfmmp_store_name', '_store_description', '_wcfm_find_address', '_wcfm_store_location', '_wcfm_store_lat', '_wcfm_store_lng', 'wp_user_avatar', '_vendor_turn_off', '_vendor_term_id', 'first_name', 'last_name', '_flw_payment_txn_ref', 'InvoiceId', '_transaction_id', 'app_builder_location', 'reviews-images', 'ivole_review_image2', '_cegg_thumbnail_external', 'faq', 'announcement', 'answers');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image', '_wp_attachment_image_alt', 'thumbnail_id', 'app_builder_delete_user_otp', 'app_builder_delete_user_otp_sent_time', 'app_builder_login_type', 'app_builder_login_avatar', 'digt_countrycode', 'digits_phone_no', 'digits_phone', 'app_builder_subscribe', 'app_builder_agree_privacy_term', 'custom_avatar', 'custom_avatar_updated', 'app_version', 'platform', 'envoirment', 'force_upgrade', 'updated_date', 'sync', 'url_download', 'referral_key', 'mwb_crp_coupon_user_id', 'wc_sc_expiry_time', 'wpclv_link', 'wcfmmp_profile_settings', 'wcfm_policy_vendor_options', 'store_name', 'wcfmmp_store_name', '_store_description', '_wcfm_find_address', '_wcfm_store_location', '_wcfm_store_lat', '_wcfm_store_lng', 'wp_user_avatar', '_vendor_turn_off', '_vendor_term_id', 'first_name', 'last_name', '_flw_payment_txn_ref', 'InvoiceId', '_transaction_id', 'app_builder_location', 'reviews-images', 'ivole_review_image2', '_cegg_thumbnail_external', 'faq', 'announcement', 'answers');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image', '_wp_attachment_image_alt', 'thumbnail_id', 'app_builder_delete_user_otp', 'app_builder_delete_user_otp_sent_time', 'app_builder_login_type', 'app_builder_login_avatar', 'digt_countrycode', 'digits_phone_no', 'digits_phone', 'app_builder_subscribe', 'app_builder_agree_privacy_term', 'custom_avatar', 'custom_avatar_updated', 'app_version', 'platform', 'envoirment', 'force_upgrade', 'updated_date', 'sync', 'url_download', 'referral_key', 'mwb_crp_coupon_user_id', 'wc_sc_expiry_time', 'wpclv_link', 'wcfmmp_profile_settings', 'wcfm_policy_vendor_options', 'store_name', 'wcfmmp_store_name', '_store_description', '_wcfm_find_address', '_wcfm_store_location', '_wcfm_store_lat', '_wcfm_store_lng', 'wp_user_avatar', '_vendor_turn_off', '_vendor_term_id', 'first_name', 'last_name', '_flw_payment_txn_ref', 'InvoiceId', '_transaction_id', 'app_builder_location', 'reviews-images', 'ivole_review_image2', '_cegg_thumbnail_external', 'faq', 'announcement', 'answers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_attribute_color', 'product_attribute_image', '_wp_attachment_image_alt', 'thumbnail_id', 'app_builder_delete_user_otp', 'app_builder_delete_user_otp_sent_time', 'app_builder_login_type', 'app_builder_login_avatar', 'digt_countrycode', 'digits_phone_no', 'digits_phone', 'app_builder_subscribe', 'app_builder_agree_privacy_term', 'custom_avatar', 'custom_avatar_updated', 'app_version', 'platform', 'envoirment', 'force_upgrade', 'updated_date', 'sync', 'url_download', 'referral_key', 'mwb_crp_coupon_user_id', 'wc_sc_expiry_time', 'wpclv_link', 'wcfmmp_profile_settings', 'wcfm_policy_vendor_options', 'store_name', 'wcfmmp_store_name', '_store_description', '_wcfm_find_address', '_wcfm_store_location', '_wcfm_store_lat', '_wcfm_store_lng', 'wp_user_avatar', '_vendor_turn_off', '_vendor_term_id', 'first_name', 'last_name', '_flw_payment_txn_ref', 'InvoiceId', '_transaction_id', 'app_builder_location', 'reviews-images', 'ivole_review_image2', '_cegg_thumbnail_external', 'faq', 'announcement', 'answers');
DELETE FROM wp_postmeta WHERE meta_key IN ('type', 'question_view_type', 'curriculum', 'questions', 'preview', 'duration', 'lesson_video_url', 'lesson_video');
DELETE FROM wp_usermeta WHERE meta_key IN ('type', 'question_view_type', 'curriculum', 'questions', 'preview', 'duration', 'lesson_video_url', 'lesson_video');
DELETE FROM wp_termmeta WHERE meta_key IN ('type', 'question_view_type', 'curriculum', 'questions', 'preview', 'duration', 'lesson_video_url', 'lesson_video');
DELETE FROM wp_commentmeta WHERE meta_key IN ('type', 'question_view_type', 'curriculum', 'questions', 'preview', 'duration', 'lesson_video_url', 'lesson_video');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_likes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_likes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_likes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_likes';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_video_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_video_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_video_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_video_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_video_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_video_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_video_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_video_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_video_description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_video_description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_video_description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_video_description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_pt_tran_ref_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_pt_tran_ref_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_pt_tran_ref_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pt_tran_ref_%';

