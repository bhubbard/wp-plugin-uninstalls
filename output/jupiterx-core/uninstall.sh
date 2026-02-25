#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_plugins'
wp option delete 'auto_update_themes'
wp option delete 'revslider-valid'
wp option delete 'revslider-code'
wp option delete 'elementor_experiment-editor_v2'
wp option delete 'jupiterx'
wp option delete 'jupiterx_dashboard_welcome_box'
wp option delete 'elementor_unfiltered_files_upload'
wp option delete 'jupiterx_setup_wizard_done'
wp option delete 'jupiterx_theme_update_modal'
wp option delete 'wp_db_backup_backups'
wp option delete 'wp_db_backup_options'
wp option delete 'wp_db_exclude_table'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'jet_engine_modules'
wp option delete 'jet_menu_options'
wp option delete 'jet-blog-settings'
wp option delete 'jet-abaf'
wp option delete 'jet-smart-filters-settings'
wp option delete 'jet_popup_conditions'
wp option delete 'jet_woo_builder'
wp option delete 'jupiterx_image_sizes_deleted'
wp option delete 'menu_items'
wp option delete 'elementor_active_kit'
wp option delete 'jupiterx_disable_theme_default_settings'
wp option delete 'jupiterx-posts-with-conditions'
wp option delete 'wp-smush-settings'
wp option delete 'elementor_experiment-e_dom_optimization'
wp option delete 'jupiterx_setup_wizard_skipped'
wp option delete '_transient_pll_languages_list'
wp option delete 'kirki_downloaded_font_files'
wp option delete 'sellkit'
wp option delete 'wpseo_titles'
wp option delete '_elementor_editor_upgrade_notice_dismissed'
wp option delete 'elementor_raven_activecampaign_api_key'
wp option delete 'elementor_raven_activecampaign_api_url'
wp option delete 'elementor_raven_mailchimp_api_key'
wp option delete 'elementor_raven_google_client_id'
wp option delete 'elementor_raven_recaptcha_v3_site_key'
wp option delete 'elementor_raven_recaptcha_v3_secret_key'
wp option delete 'elementor_raven_recaptcha_v3_threshold'
wp option delete 'elementor_raven_recaptcha_site_key'
wp option delete 'elementor_raven_recaptcha_secret_key'
wp option delete 'elementor_raven_google_api_key'
wp option delete 'jx_my_account_custom_tab'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elementor_%'"
wp option delete 'elementor_load_fa4_shim'
wp option delete 'elementor_experiment-e_font_icon_svg'
wp option delete 'polylang'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'elementor_remote_info_library'
wp option delete 'elementor_onboarded'
wp option delete 'elementor_tracker_notice'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'jupiterx_enable_global_colors'
wp option delete 'jupiterx_fresh_install'
wp option delete 'elementor_experiment-container_grid'
wp option delete 'jupiterx_setup_wizard_hide'
wp option delete 'jupiterx_first_installation'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'health-check-site-status-result'
wp transient delete 'elementor_library_page_title_bar'
wp transient delete '_revslider_welcome_screen_activation_redirect'
wp transient delete 'wc_count_comments'
wp transient delete 'wc_attribute_taxonomies'
wp transient delete '_wc_activation_redirect'
wp transient delete 'jupiterx_inactive_required_plugins_list'
wp transient delete 'jupiterx_templates_filters'
wp transient delete 'jupiterx_modify_auto_update'
wp transient delete 'jupiterx_managed_plugins'
wp transient delete 'jupiterx_tgmpa_plugins'
wp transient delete 'jupiterx_tgmpa_plugins_check'
wp transient delete 'jupiterx_cp_settings_products'
wp transient delete 'jupiterx_setup_wizard_template'
wp transient delete 'jupiterx_sellkit_pro_link'
wp transient delete 'kirki_googlefonts_cache'
wp transient delete 'kirki_googlefont_names_cache'
wp transient delete 'kirki_remote_url_contents'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_raven_preset_%' OR option_name LIKE '_site_transient_raven_preset_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_cached' OR option_name LIKE '_site_transient_%_cached'"
wp transient delete 'raven_presets_elements_cached'
wp transient delete 'raven_presets_elements'
wp transient delete 'jupiterx_popups_list'
wp transient delete 'jupiterx_event_transient'

# Clear Cron Jobs
wp cron event delete 'jupiterx_license_checks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jupiterx_attachment_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jupiterx_attachment_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jupiterx_attachment_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jupiterx_attachment_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jx-layout-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jx-layout-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jx-layout-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jx-layout-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx-condition-rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx-condition-rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx-condition-rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx-condition-rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_dismiss_sellkit_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_dismiss_sellkit_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_dismiss_sellkit_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_dismiss_sellkit_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx-condition-rules-string'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx-condition-rules-string'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx-condition-rules-string'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx-condition-rules-string'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jx-layout-builder-footer-behavior'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jx-layout-builder-footer-behavior'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jx-layout-builder-footer-behavior'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jx-layout-builder-footer-behavior'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jx-layout-builder-header-behavior'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jx-layout-builder-header-behavior'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jx-layout-builder-header-behavior'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jx-layout-builder-header-behavior'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jupiterx_popup_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jupiterx_popup_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jupiterx_popup_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jupiterx_popup_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jupiterx_popup_triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jupiterx_popup_triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jupiterx_popup_triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jupiterx_popup_triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jupiterx_admin_promotion_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jupiterx_admin_promotion_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jupiterx_admin_promotion_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jupiterx_admin_promotion_dismissed_%'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_reading_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_reading_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_reading_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_reading_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_taxonomy_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_taxonomy_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_taxonomy_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_taxonomy_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_taxonomy_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_taxonomy_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_taxonomy_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_taxonomy_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_raven_register_newsletter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_raven_register_newsletter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_raven_register_newsletter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_raven_register_newsletter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social-media-user-twitter-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social-media-user-twitter-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social-media-user-twitter-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social-media-user-twitter-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social-media-user-twitter-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social-media-user-twitter-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social-media-user-twitter-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social-media-user-twitter-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'social-media-user-twitter-screen-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'social-media-user-twitter-screen-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'social-media-user-twitter-screen-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'social-media-user-twitter-screen-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_element_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_variation_gallery_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_variation_gallery_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_variation_gallery_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_variation_gallery_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crosssell_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_main_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_main_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_main_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_main_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_main_background_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_main_background_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_main_background_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_main_background_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_main_background_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_main_background_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_main_background_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_main_background_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_main_background_repeat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_main_background_repeat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_main_background_repeat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_main_background_repeat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementor_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementor_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementor_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementor_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jx_editor_first_load'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jx_editor_first_load'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jx_editor_first_load'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jx_editor_first_load'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_font_face'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_font_face'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_font_face'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_font_face'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jupiterx_popup_user_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jupiterx_popup_user_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jupiterx_popup_user_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jupiterx_popup_user_type'"
