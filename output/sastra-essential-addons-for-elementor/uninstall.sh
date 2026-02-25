#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmpcoder_recent_import_log_file'
wp option delete 'mla_enable_upload_mimes'
wp option delete 'tmpcoder_imported_wxr_id'
wp option delete 'tmpcoder_global_theme_options_sastrawp'
wp option delete '_tmpcoder_old_site_options'
wp option delete 'sidebars_widgets'
wp option delete '_tmpcoder_old_widgets_data'
wp option delete 'tmpcoder_current_active_demo'
wp option delete 'tmpcoder_import_complete'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_queue_flush_rewrite_rules'
wp option delete 'tmpcoder_is_call_retry'
wp option delete 'tmpcoder_already_exists_post'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'tmpcoder_import_data '
wp option delete 'elementor_active_kit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_attribute_id'"
wp option delete 'cfvsw_global'
wp option delete 'cfvsw_shop'
wp option delete 'cfvsw_style'
wp option delete 'cfvsw_general_settings'
wp option delete 'cfvsw_shop_page_settings'
wp option delete 'cfvsw_product_page_settings'
wp option delete 'cfvsw_cart_page_settings'
wp option delete 'tmpcoder_st_attachments'
wp option delete 'tmpcoder-parallax-background'
wp option delete 'tmpcoder-parallax-multi-layer'
wp option delete 'tmpcoder_mailchimp_api_key'
wp option delete 'tmpcoder_add_wishlist_to_my_account'
wp option delete 'tmpcoder_wishlist_page'
wp option delete 'tmpcoder_compare_page'
wp option delete 'tmpcoder_woo_shop_ppp'
wp option delete 'tmpcoder_woo_shop_cat_ppp'
wp option delete 'tmpcoder_woo_shop_tag_ppp'
wp option delete 'tmpcoder-particles'
wp option delete 'tmpcoder-custom-css'
wp option delete 'tmpcoder-sticky-section'
wp option delete 'tmpcoder-floating-effects'
wp option delete 'tmpcoder-scroll-effects-pro'
wp option delete 'tmpcoder-element-toggle-all'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tmpcoder-element-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_actions_left'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugins_left'"
wp option delete 'tmpcoder-element-mega-menu'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tmpcoder_plugin_update_dismiss_notice_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tmpcoder_pro_features_dismiss_notice_%'"
wp option delete 'tmpcoder_rating_maybe_later_time'
wp option delete 'tmpcoder_rating_dismiss_notice'
wp option delete 'tmpcoder_rating_already_rated'
wp option delete 'tmpcoder_sastra_elementor_addon_activation_time'
wp option delete 'tmpcoder_type_header_conditions'
wp option delete 'tmpcoder_type_footer_conditions'
wp option delete 'tmpcoder_type_archive_conditions'
wp option delete 'tmpcoder_type_search_result_page_conditions'
wp option delete 'tmpcoder_type_404_conditions'
wp option delete 'tmpcoder_type_single_post_conditions'
wp option delete 'tmpcoder_type_product_archive_conditions'
wp option delete 'tmpcoder_type_product_category_conditions'
wp option delete 'tmpcoder_type_single_product_conditions'
wp option delete 'elementor_css_print_method'
wp option delete 'tmpcoder_wl_plugin_links'
wp option delete 'tmpcoder_spexo_addons_version'
wp option delete 'elementor_optimized_image_loading'
wp option delete 'tmpcoder_allowed_post_types'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'tmpcoder_video_settings_options'
wp option delete 'tmpcoder_recaptcha_v3_site_key'
wp option delete 'elementor_experiment-additional_custom_breakpoints'
wp option delete 'spexo_ai_options'
wp option delete 'spexo_ai_daily_tokens_used'
wp option delete 'spexo_ai_cached_models'
wp option delete 'spexo_ai_last_token_reset'
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tmpcoder_cpt_ppp_%'"
wp option delete 'woocommerce_category_archive_display'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'tmpcoder_enable_woo_flexslider_navigation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wizard_step'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wizard_done'"
wp option delete 'sastrawp_wizard_page'
wp option delete 'spexo_wizard_page'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wizard_page_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wizard_page'"
wp option delete 'tmpcoder_sastra_elementor_addon_activation_time_for_sale'

# Delete Transients
wp transient delete 'sastra_activation_notice'
wp transient delete 'tmpcoder_import_started'
wp transient delete 'elementor_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tmpcoder_activate_theme_dismissed_%' OR option_name LIKE '_site_transient_tmpcoder_activate_theme_dismissed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tmpcoder_activate_pro_notice_dismissed_%' OR option_name LIKE '_site_transient_tmpcoder_activate_pro_notice_dismissed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tmpcoder_upgrade_pro_notice_dismissed_%' OR option_name LIKE '_site_transient_tmpcoder_upgrade_pro_notice_dismissed_%'"
wp transient delete 'tmpcoder_upgrade_pro_notice'
wp transient delete 'tmpcoder_plugin_do_activation_redirect'
wp transient delete 'tmpcoder_latest_updates_notice_banner'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_theme_posts_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_theme_posts_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_theme_posts_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_theme_posts_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_theme_posts_per_rss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_theme_posts_per_rss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_theme_posts_per_rss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_theme_posts_per_rss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tmpcoder_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tmpcoder_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tmpcoder_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tmpcoder_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_swatch_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_swatch_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_swatch_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_swatch_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_swatch_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_swatch_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_swatch_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_swatch_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_swatch_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_swatch_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_swatch_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_swatch_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_swatch_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_swatch_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_swatch_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_swatch_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_swatch_tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_swatch_tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_swatch_tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_swatch_tooltip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tmpcoder_imported_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tmpcoder_imported_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tmpcoder_imported_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tmpcoder_imported_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tmpcoder_enable_for_batch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tmpcoder_enable_for_batch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tmpcoder_enable_for_batch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tmpcoder_enable_for_batch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tmpcoder_imported_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tmpcoder_imported_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tmpcoder_imported_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tmpcoder_imported_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_old_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_old_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_old_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_old_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_secondary_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_secondary_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_secondary_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_secondary_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_target_include_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_target_include_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_target_include_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_target_include_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_show_on_canvas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder-mega-menu-item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder-mega-menu-item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder-mega-menu-item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder-mega-menu-item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder-mega-menu-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder-mega-menu-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder-mega-menu-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder-mega-menu-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tmpcoder_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tmpcoder_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tmpcoder_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tmpcoder_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_privacypolicy_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_privacypolicy_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_privacypolicy_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_privacypolicy_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_registerd_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_registerd_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_registerd_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_registerd_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementor_preferences'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder-popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder-popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder-popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder-popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'editor_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'editor_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'editor_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'editor_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_target_exclude_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_target_exclude_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_target_exclude_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_target_exclude_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_target_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_target_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_target_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_target_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spexo_ai_alt_retry_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spexo_ai_alt_retry_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spexo_ai_alt_retry_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spexo_ai_alt_retry_count'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_vimeo_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_vimeo_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_vimeo_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_vimeo_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmpcoder_custom_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmpcoder_custom_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmpcoder_custom_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmpcoder_custom_video_url'"
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
