#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_maintenance_mode_mode'
wp option delete 'wpr_product_archive_conditions'
wp option delete 'wpr_product_single_conditions'
wp option delete 'wpr_archive_conditions'
wp option delete 'wpr_single_conditions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_conditions'"
wp option delete 'wpr_header_conditions'
wp option delete 'wpr_footer_conditions'
wp option delete 'wpr_popup_conditions'
wp option delete 'wpr-parallax-background'
wp option delete 'wpr-parallax-multi-layer'
wp option delete 'elementor_cpt_support'
wp option delete 'elementor_css_print_method'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_meta_secondary_image_%'"
wp option delete 'royal_elementor_addons_activation_time_for_sale'
wp option delete 'wpr_sale_remind_me_later'
wp option delete 'wpr_plugin_sale_dismiss_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_plugin_update_dismiss_notice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_pro_features_dismiss_notice_%'"
wp option delete 'wpr_maybe_later_time'
wp option delete 'wpr_rating_dismiss_notice'
wp option delete 'wpr_rating_already_rated'
wp option delete 'royal_elementor_addons_activation_time'
wp option delete 'wpr_wl_plugin_logo'
wp option delete 'wpr_override_woo_templates'
wp option delete 'wpr_enable_product_image_zoom'
wp option delete 'wpr_enable_woo_flexslider_navigation'
wp option delete 'wpr_woo_shop_ppp'
wp option delete 'wpr_woo_shop_cat_ppp'
wp option delete 'wpr_woo_shop_tag_ppp'
wp option delete 'wpr_compare_page'
wp option delete 'wpr_wishlist_page'
wp option delete 'wpr_google_map_api_key'
wp option delete 'wpr_mailchimp_api_key'
wp option delete 'wpr_recaptcha_v3_site_key'
wp option delete 'wpr_recaptcha_v3_secret_key'
wp option delete 'wpr_recaptcha_v3_score'
wp option delete 'wpr_lb_bg_color'
wp option delete 'wpr_lb_toolbar_color'
wp option delete 'wpr_lb_caption_color'
wp option delete 'wpr_lb_gallery_color'
wp option delete 'wpr_lb_pb_color'
wp option delete 'wpr_lb_ui_color'
wp option delete 'wpr_lb_ui_hr_color'
wp option delete 'wpr_lb_text_color'
wp option delete 'wpr_lb_icon_size'
wp option delete 'wpr_lb_arrow_size'
wp option delete 'wpr_lb_text_size'
wp option delete 'wpr_wl_plugin_name'
wp option delete 'wpr_wl_plugin_desc'
wp option delete 'wpr_wl_plugin_author'
wp option delete 'wpr_wl_plugin_website'
wp option delete 'wpr_wl_plugin_links'
wp option delete 'wpr_wl_hide_elements_tab'
wp option delete 'wpr_wl_hide_extensions_tab'
wp option delete 'wpr_wl_hide_settings_tab'
wp option delete 'wpr_wl_hide_free_pro_tab'
wp option delete 'wpr_wl_hide_white_label_tab'
wp option delete 'wpr-particles'
wp option delete 'wpr-sticky-section'
wp option delete 'wpr-custom-css'
wp option delete 'wpr-element-toggle-all'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr-element-%'"
wp option delete 'wpr-import-kit-id'
wp option delete 'elementor_active_kit'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_queue_flush_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_email_fields_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_meta_keys_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_referrer_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_referrer_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_email_content_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_email_to_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_email_subject_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_cc_header_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_bcc_header_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_reply_to_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_email_from_name_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_email_from_%'"
wp option delete 'st_attachments'
wp option delete 'wpr_progress_bar_global_options'
wp option delete 'elementor_experiment-additional_custom_breakpoints'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_instagram_posts_limit%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpr_instagram_access_token_to_compare%'"
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_enable_ajax_add_to_cart'

# Delete Transients
wp transient delete 'royal-elementor-kit_activation_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpr_instagram_access_token%' OR option_name LIKE '_site_transient_wpr_instagram_access_token%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpr_instagram_access_token_expires_in%' OR option_name LIKE '_site_transient_wpr_instagram_access_token_expires_in%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpr_instagram_access_token_generation_date%' OR option_name LIKE '_site_transient_wpr_instagram_access_token_generation_date%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_tf_token' OR option_name LIKE '_site_transient_%_tf_token'"
wp transient delete 'wpr_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpr_demo_import_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpr_demo_import_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpr_demo_import_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpr_demo_import_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_header_show_on_canvas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_header_show_on_canvas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_header_show_on_canvas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_header_show_on_canvas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_footer_show_on_canvas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_footer_show_on_canvas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_footer_show_on_canvas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_footer_show_on_canvas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpr_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpr_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpr_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpr_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr-mega-menu-item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr-mega-menu-item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr-mega-menu-item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr-mega-menu-item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr-mega-menu-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr-mega-menu-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr-mega-menu-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr-mega-menu-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_secondary_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_secondary_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_secondary_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_secondary_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_form_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_form_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_form_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_form_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_form_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_form_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_form_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_form_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_form_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_form_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_form_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_form_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_user_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_user_ip'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_compare'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_compare'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_compare'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_compare'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpr_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpr_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpr_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpr_wishlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementor_preferences'"
