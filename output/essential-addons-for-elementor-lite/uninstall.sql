-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eael_setup_wizard', 'elementor_css_print_method', 'eael_js_print_method', 'woocommerce_cart_redirect_after_add', 'eael_custom_profile_fields', 'eael_templately_promo_hide', 'woocommerce_hide_out_of_stock_items', 'eael_version', 'wpins_allow_tracking', 'wpins_last_track_time', 'active_sitewide_plugins', 'wpins_block_notice', 'elementor_controls_usage', 'eael_notice_migration', 'wpdeveloper_plugins_data', 'eael_save_settings', 'eael_br_google_place_api_key', 'formstack_oauth2_code', 'formstack_settings', 'formstack_form_count', 'formstack_forms', 'eael_recaptcha_sitekey', 'eael_cloudflare_turnstile_sitekey', 'eael_cloudflare_turnstile_secretkey', 'eael_recaptcha_sitekey_v3', 'eael_recaptcha_badge_hide', 'eael_recaptcha_language_v3', 'eael_lr_resetpassword_form_info', 'eael_save_typeform_personal_token', 'woocommerce_enable_checkout_login_reminder', '_astra_ext_enabled_extensions', 'eael_save_post_duplicator_post_type', 'eael_global_settings', 'elementor_cpt_support', 'woocommerce_enable_shipping_calc', 'woocommerce_tax_total_display', 'woocommerce_hold_stock_minutes', 'woocommerce_enable_coupons', 'woocommerce_ship_to_destination', 'woocommerce_enable_order_comments', 'eael_save_google_map_api', 'eael_woo_ac_dashboard_custom_tabs', 'eael_save_mailchimp_api', 'eael_recaptcha_secret', 'eael_recaptcha_language', 'eael_recaptcha_secret_v3', 'eael_g_client_id', 'eael_fb_app_id', 'eael_fb_app_secret', 'eael_lr_mailchimp_api_key');
DELETE FROM wp_options WHERE option_name IN ('eael_custom_profile_fields_text', 'eael_custom_profile_fields_img', 'eael_admin_promotion', 'elementor_disabled_elements', 'eael_admin_menu_notice', 'eael_editor_updated_at', 'woocommerce_weight_unit', '_wpdeveloper_plugin_pointer_priority', 'eael_reduce_op_table_data', 'eael_do_activation_redirect', 'eael_bfcm25_pointer_dismiss', 'wpnotice_priority_time_expired');
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE 'eael_show_reset_password_on_form_submit_%';
DELETE FROM wp_options WHERE option_name LIKE 'eael_lostpassword_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'eael_register_errors_%';
DELETE FROM wp_options WHERE option_name LIKE 'eael_register_success_%';
DELETE FROM wp_options WHERE option_name LIKE 'eael_lostpassword_success_%';
DELETE FROM wp_options WHERE option_name LIKE 'eael_resetpassword_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'eael_resetpassword_success_%';
DELETE FROM wp_options WHERE option_name LIKE '%_show';
DELETE FROM wp_options WHERE option_name LIKE '%_tf_token';
DELETE FROM wp_options WHERE option_name LIKE '%_tf_user_object';
DELETE FROM wp_options WHERE option_name LIKE 'eael_post_grid_read_more_button_text_%';
DELETE FROM wp_options WHERE option_name LIKE 'eael_post_grid_excerpt_expanison_indicator_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eael_widget_elements', '_elementor_template_type', '_eael_custom_js', '_elementor_page_settings', '_elementor_data', '_elementor_controls_usage', '_wp_attachment_image_alt', '_eael_checkout_fields_settings', 'thumbnail_id', 'total_sales', 'doc_category_image-id', '_eael_post_view_count', 'eael_phone_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eael_widget_elements', '_elementor_template_type', '_eael_custom_js', '_elementor_page_settings', '_elementor_data', '_elementor_controls_usage', '_wp_attachment_image_alt', '_eael_checkout_fields_settings', 'thumbnail_id', 'total_sales', 'doc_category_image-id', '_eael_post_view_count', 'eael_phone_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eael_widget_elements', '_elementor_template_type', '_eael_custom_js', '_elementor_page_settings', '_elementor_data', '_elementor_controls_usage', '_wp_attachment_image_alt', '_eael_checkout_fields_settings', 'thumbnail_id', 'total_sales', 'doc_category_image-id', '_eael_post_view_count', 'eael_phone_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eael_widget_elements', '_elementor_template_type', '_eael_custom_js', '_elementor_page_settings', '_elementor_data', '_elementor_controls_usage', '_wp_attachment_image_alt', '_eael_checkout_fields_settings', 'thumbnail_id', 'total_sales', 'doc_category_image-id', '_eael_post_view_count', 'eael_phone_number');

