#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elite_hide_head_foot_on_maintenenace'
wp option delete 'elementor_maintenance_mode_mode'
wp option delete 'elite_product_archive_conditions'
wp option delete 'elite_product_single_conditions'
wp option delete 'elite_archive_conditions'
wp option delete 'elite_single_conditions'
wp option delete 'elite_has_used_royal_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_conditions'"
wp option delete 'elite_header_conditions'
wp option delete 'elite_footer_conditions'
wp option delete 'elite_popup_conditions'
wp option delete 'elite-parallax-background'
wp option delete 'elite-parallax-multi-layer'
wp option delete 'elementor_cpt_support'
wp option delete 'elementor_css_print_method'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_meta_secondary_image_%'"
wp option delete 'elite_wl_plugin_logo'
wp option delete 'elite_hide_banners'
wp option delete 'elite_override_woo_templates'
wp option delete 'elite_override_woo_cart'
wp option delete 'elite_override_woo_mini_cart'
wp option delete 'elite_override_woo_notices'
wp option delete 'elite_remove_wc_default_lightbox'
wp option delete 'elite_enable_product_image_zoom'
wp option delete 'elite_enable_woo_flexslider_navigation'
wp option delete 'elite_add_wishlist_to_my_account'
wp option delete 'elite_woo_shop_ppp'
wp option delete 'elite_woo_shop_cat_ppp'
wp option delete 'elite_woo_shop_tag_ppp'
wp option delete 'elite_compare_page'
wp option delete 'elite_wishlist_page'
wp option delete 'elite_google_map_api_key'
wp option delete 'elite_google_map_language'
wp option delete 'elite_mailchimp_api_key'
wp option delete 'elite_recaptcha_v3_site_key'
wp option delete 'elite_recaptcha_v3_secret_key'
wp option delete 'elite_recaptcha_v3_score'
wp option delete 'elite_lb_bg_color'
wp option delete 'elite_lb_toolbar_color'
wp option delete 'elite_lb_caption_color'
wp option delete 'elite_lb_gallery_color'
wp option delete 'elite_lb_pb_color'
wp option delete 'elite_lb_ui_color'
wp option delete 'elite_lb_ui_hr_color'
wp option delete 'elite_lb_text_color'
wp option delete 'elite_lb_icon_size'
wp option delete 'elite_lb_arrow_size'
wp option delete 'elite_lb_text_size'
wp option delete 'elite_wl_plugin_name'
wp option delete 'elite_wl_plugin_desc'
wp option delete 'elite_wl_plugin_author'
wp option delete 'elite_wl_plugin_website'
wp option delete 'elite_wl_plugin_links'
wp option delete 'elite_wl_hide_elements_tab'
wp option delete 'elite_wl_hide_extensions_tab'
wp option delete 'elite_wl_hide_settings_tab'
wp option delete 'elite_wl_hide_free_pro_tab'
wp option delete 'elite_wl_hide_white_label_tab'
wp option delete 'elite_ignore_wp_rocket_js'
wp option delete 'elite_ignore_wp_optimize_js'
wp option delete 'elite_ignore_wp_optimize_css'
wp option delete 'elite-particles'
wp option delete 'elite-custom-css'
wp option delete 'elite-sticky-section'
wp option delete 'elite-element-toggle-all'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite-element-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_cpt_ppp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-pro'"
wp option delete 'elite-import-kit-id'
wp option delete 'elementor_experiment-e_local_google_fonts'
wp option delete 'elementor_active_kit'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_queue_flush_rewrite_rules'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_form_upload_field_in_use_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_email_content_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_email_fields_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_meta_keys_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_referrer_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_referrer_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_email_to_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_email_subject_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_cc_header_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_bcc_header_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_reply_to_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_email_from_name_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_email_from_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_webhook_url_%'"
wp option delete 'st_attachments'
wp option delete 'woocommerce_weight_unit'
wp option delete 'elite_elementor_addons_activation_time'
wp option delete 'elite_elementor_addons_activation_time_for_sale'
wp option delete 'elementor_experiment-additional_custom_breakpoints'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_instagram_posts_limit%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elite_instagram_access_token_to_compare%'"
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elite_has_widgets_%' OR option_name LIKE '_site_transient_elite_has_widgets_%'"
wp transient delete 'elite-elementor-kit_activation_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elite_instagram_access_token%' OR option_name LIKE '_site_transient_elite_instagram_access_token%'"
wp transient delete 'elite_plugin_do_activation_redirect'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elite_instagram_access_token_expires_in%' OR option_name LIKE '_site_transient_elite_instagram_access_token_expires_in%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elite_instagram_access_token_generation_date%' OR option_name LIKE '_site_transient_elite_instagram_access_token_generation_date%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_tf_token' OR option_name LIKE '_site_transient_%_tf_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elite_custom_token_%' OR option_name LIKE '_site_transient_elite_custom_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elite_custom_guest_token_%' OR option_name LIKE '_site_transient_elite_custom_guest_token_%'"

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elite_demo_import_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elite_demo_import_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elite_demo_import_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elite_demo_import_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite_header_show_on_canvas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite_header_show_on_canvas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite_header_show_on_canvas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite_header_show_on_canvas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite_footer_show_on_canvas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite_footer_show_on_canvas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite_footer_show_on_canvas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite_footer_show_on_canvas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elite_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elite_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elite_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elite_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite-mega-menu-item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite-mega-menu-item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite-mega-menu-item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite-mega-menu-item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite-mega-menu-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite-mega-menu-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite-mega-menu-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite-mega-menu-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite_secondary_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite_secondary_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite_secondary_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite_secondary_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_liked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_IP'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_IP'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_IP'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_IP'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_like_modified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_like_modified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_like_modified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_like_modified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite_wishlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite_compare'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite_compare'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite_compare'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite_compare'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite_form_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite_form_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite_form_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite_form_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite_form_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite_form_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite_form_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite_form_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite_form_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite_form_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite_form_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite_form_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite_user_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elite_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elite_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elite_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elite_user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementor_preferences'"
