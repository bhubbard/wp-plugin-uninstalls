-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('courseflow_course_button_text', 'courseflow_button_font_family', 'courseflow_button_font_size', 'courseflow_button_text_color', 'courseflow_button_background_color', 'courseflow_button_border_color', 'courseflow_button_height', 'courseflow_button_width', 'courseflow_button_border_radius', 'courseflow_button_border_width', 'courseflow_button_border_style', 'courseflow_button_shadow_x', 'courseflow_button_shadow_y', 'courseflow_button_shadow_blur', 'courseflow_button_shadow_spread', 'courseflow_button_shadow_color', 'courseflow_button_background_color_hover', 'courseflow_button_text_color_hover', 'courseflow_image_button_url', 'courseflow_image_button_alt', 'courseflow_image_button_width', 'courseflow_image_button_height', 'courseflow_image_button_original_size', 'courseflow_image_button_maintain_aspect_ratio', 'courseflow_stripe_publishable_key', 'courseflow_stripe_secret_key', 'courseflow_stripe_endpoint_secret', 'courseflow_allow_url_collection', 'courseflow_auto_create_account', 'courseflow_success_page_id', 'courseflow_webhook_url', 'courseflow_default_currency', 'courseflow_lp_hook_bridge', 'learndash_settings_payments_general', 'courseflow_processed_transactions', 'courseflow_plugin_language', 'courseflow_processed_sessions', 'courseflow_all_transactions', 'courseflow_active_payment_methods');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sfwd-courses', '_user_id', '_ld_transaction_course_id', '_course_id', '_payment_method_title', '_ld_payment_processor', '_price', '_currency', 'tutor_course_sale_price', 'tutor_course_price', 'stripe_session_id', 'courseflow_transaction_details', 'stripe_currency', 'stripe_price', '_tutor_course_price', '_tutor_course_currency', '_tutor_course_enrolled_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sfwd-courses', '_user_id', '_ld_transaction_course_id', '_course_id', '_payment_method_title', '_ld_payment_processor', '_price', '_currency', 'tutor_course_sale_price', 'tutor_course_price', 'stripe_session_id', 'courseflow_transaction_details', 'stripe_currency', 'stripe_price', '_tutor_course_price', '_tutor_course_currency', '_tutor_course_enrolled_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sfwd-courses', '_user_id', '_ld_transaction_course_id', '_course_id', '_payment_method_title', '_ld_payment_processor', '_price', '_currency', 'tutor_course_sale_price', 'tutor_course_price', 'stripe_session_id', 'courseflow_transaction_details', 'stripe_currency', 'stripe_price', '_tutor_course_price', '_tutor_course_currency', '_tutor_course_enrolled_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sfwd-courses', '_user_id', '_ld_transaction_course_id', '_course_id', '_payment_method_title', '_ld_payment_processor', '_price', '_currency', 'tutor_course_sale_price', 'tutor_course_price', 'stripe_session_id', 'courseflow_transaction_details', 'stripe_currency', 'stripe_price', '_tutor_course_price', '_tutor_course_currency', '_tutor_course_enrolled_ids');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tutor_enrolled_user_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tutor_enrolled_user_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tutor_enrolled_user_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tutor_enrolled_user_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tutor_course_enrollment_status_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tutor_course_enrollment_status_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tutor_course_enrollment_status_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tutor_course_enrollment_status_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_tutor_order_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_tutor_order_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_tutor_order_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_tutor_order_%';

