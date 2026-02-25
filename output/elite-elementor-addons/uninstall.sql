-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elite_hide_head_foot_on_maintenenace', 'elementor_maintenance_mode_mode', 'elite_product_archive_conditions', 'elite_product_single_conditions', 'elite_archive_conditions', 'elite_single_conditions', 'elite_has_used_royal_widgets', 'elite_header_conditions', 'elite_footer_conditions', 'elite_popup_conditions', 'elite-parallax-background', 'elite-parallax-multi-layer', 'elementor_cpt_support', 'elementor_css_print_method', 'elite_wl_plugin_logo', 'elite_hide_banners', 'elite_override_woo_templates', 'elite_override_woo_cart', 'elite_override_woo_mini_cart', 'elite_override_woo_notices', 'elite_remove_wc_default_lightbox', 'elite_enable_product_image_zoom', 'elite_enable_woo_flexslider_navigation', 'elite_add_wishlist_to_my_account', 'elite_woo_shop_ppp', 'elite_woo_shop_cat_ppp', 'elite_woo_shop_tag_ppp', 'elite_compare_page', 'elite_wishlist_page', 'elite_google_map_api_key', 'elite_google_map_language', 'elite_mailchimp_api_key', 'elite_recaptcha_v3_site_key', 'elite_recaptcha_v3_secret_key', 'elite_recaptcha_v3_score', 'elite_lb_bg_color', 'elite_lb_toolbar_color', 'elite_lb_caption_color', 'elite_lb_gallery_color', 'elite_lb_pb_color', 'elite_lb_ui_color', 'elite_lb_ui_hr_color', 'elite_lb_text_color', 'elite_lb_icon_size', 'elite_lb_arrow_size', 'elite_lb_text_size', 'elite_wl_plugin_name', 'elite_wl_plugin_desc', 'elite_wl_plugin_author', 'elite_wl_plugin_website');
DELETE FROM wp_options WHERE option_name IN ('elite_wl_plugin_links', 'elite_wl_hide_elements_tab', 'elite_wl_hide_extensions_tab', 'elite_wl_hide_settings_tab', 'elite_wl_hide_free_pro_tab', 'elite_wl_hide_white_label_tab', 'elite_ignore_wp_rocket_js', 'elite_ignore_wp_optimize_js', 'elite_ignore_wp_optimize_css', 'elite-particles', 'elite-custom-css', 'elite-sticky-section', 'elite-element-toggle-all', 'elite-import-kit-id', 'elementor_experiment-e_local_google_fonts', 'elementor_active_kit', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id', 'woocommerce_queue_flush_rewrite_rules', 'woocommerce_enable_ajax_add_to_cart', 'st_attachments', 'woocommerce_weight_unit', 'elite_elementor_addons_activation_time', 'elite_elementor_addons_activation_time_for_sale', 'elementor_experiment-additional_custom_breakpoints', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'woocommerce_enable_checkout_login_reminder', 'woocommerce_enable_signup_and_login_from_checkout', 'elite-elementor-kit_activation_notice', 'elite_plugin_do_activation_redirect', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_conditions';
DELETE FROM wp_options WHERE option_name LIKE 'elite_meta_secondary_image_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite-element-%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_cpt_ppp_%';
DELETE FROM wp_options WHERE option_name LIKE '%-pro';
DELETE FROM wp_options WHERE option_name LIKE 'elite_form_upload_field_in_use_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_email_content_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_email_fields_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_meta_keys_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_referrer_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_referrer_title_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_email_to_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_email_subject_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_cc_header_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_bcc_header_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_reply_to_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_email_from_name_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_email_from_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_webhook_url_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_instagram_posts_limit%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_instagram_access_token_to_compare%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_has_widgets_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_instagram_access_token%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_instagram_access_token_expires_in%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_instagram_access_token_generation_date%';
DELETE FROM wp_options WHERE option_name LIKE '%_tf_token';
DELETE FROM wp_options WHERE option_name LIKE 'elite_custom_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'elite_custom_guest_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elite_demo_import_item', '_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_controls_usage', '_elementor_data', 'elite_header_show_on_canvas', '_wp_page_template', 'elite_footer_show_on_canvas', '_elementor_template_type', '_elite_template_type', '_elementor_page_settings', 'elite-mega-menu-item', 'elite-mega-menu-settings', 'elite_secondary_image_id', '_post_like_count', '_user_liked', '_user_IP', '_post_like_modified', '_sale_price_dates_to', '_sale_price_dates_from', '_button_text', 'elite_wishlist', 'elite_compare', 'elite_form_name', 'elite_form_id', 'elite_form_page', 'elite_form_page_id', 'elite_user_agent', 'elite_user_ip', '_wp_attachment_image_alt', 'thumbnail_id', 'elementor_preferences');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elite_demo_import_item', '_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_controls_usage', '_elementor_data', 'elite_header_show_on_canvas', '_wp_page_template', 'elite_footer_show_on_canvas', '_elementor_template_type', '_elite_template_type', '_elementor_page_settings', 'elite-mega-menu-item', 'elite-mega-menu-settings', 'elite_secondary_image_id', '_post_like_count', '_user_liked', '_user_IP', '_post_like_modified', '_sale_price_dates_to', '_sale_price_dates_from', '_button_text', 'elite_wishlist', 'elite_compare', 'elite_form_name', 'elite_form_id', 'elite_form_page', 'elite_form_page_id', 'elite_user_agent', 'elite_user_ip', '_wp_attachment_image_alt', 'thumbnail_id', 'elementor_preferences');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elite_demo_import_item', '_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_controls_usage', '_elementor_data', 'elite_header_show_on_canvas', '_wp_page_template', 'elite_footer_show_on_canvas', '_elementor_template_type', '_elite_template_type', '_elementor_page_settings', 'elite-mega-menu-item', 'elite-mega-menu-settings', 'elite_secondary_image_id', '_post_like_count', '_user_liked', '_user_IP', '_post_like_modified', '_sale_price_dates_to', '_sale_price_dates_from', '_button_text', 'elite_wishlist', 'elite_compare', 'elite_form_name', 'elite_form_id', 'elite_form_page', 'elite_form_page_id', 'elite_user_agent', 'elite_user_ip', '_wp_attachment_image_alt', 'thumbnail_id', 'elementor_preferences');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elite_demo_import_item', '_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_controls_usage', '_elementor_data', 'elite_header_show_on_canvas', '_wp_page_template', 'elite_footer_show_on_canvas', '_elementor_template_type', '_elite_template_type', '_elementor_page_settings', 'elite-mega-menu-item', 'elite-mega-menu-settings', 'elite_secondary_image_id', '_post_like_count', '_user_liked', '_user_IP', '_post_like_modified', '_sale_price_dates_to', '_sale_price_dates_from', '_button_text', 'elite_wishlist', 'elite_compare', 'elite_form_name', 'elite_form_id', 'elite_form_page', 'elite_form_page_id', 'elite_user_agent', 'elite_user_ip', '_wp_attachment_image_alt', 'thumbnail_id', 'elementor_preferences');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_show_on_canvas';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_show_on_canvas';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_show_on_canvas';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_show_on_canvas';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_action_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_action_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_action_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_action_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_type';

