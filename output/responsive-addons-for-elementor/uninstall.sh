#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rael_mailchimp_settings_api_key'
wp option delete 'rael_google_map_settings_api_key'
wp option delete 'rael_google_map_settings_localization_language'
wp option delete 'rael_login_reg_setting_site_key'
wp option delete 'rael_login_reg_setting_secret_key'
wp option delete 'rael_widgets'
wp option delete 'rael_duplicator_allowed_post_types'
wp option delete 'rael_enable_copy_paste_btn'
wp option delete 'woocommerce_currency_pos'
wp option delete 'is_old_responsive_elementor_addons_active'
wp option delete 'rael_done_migration_theme_builder_templates'
wp option delete 'rea_to_rae_migration_process'
wp option delete 'responsive_addons_for_elementor_review_notice_dismissed'
wp option delete 'responsive_addons_for_elementor_review_notice'
wp option delete 'responsive_addons_for_elementor_initial_timeout'
wp option delete 'rael_widgets_data_update'
wp option delete 'rael_theme_builder_widgets_data_update'
wp option delete 'rael_facebook_feed_widgets_data_update'
wp option delete 'rael_last_version'
wp option delete 'elementor_experiment-e_swiper_latest'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rael_login_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rael_register_errors_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rael_register_success_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elementor_%'"
wp option delete 'rea_to_rae_image_gallery_images_custom_fields_migration_process'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'

# Delete Transients
wp transient delete 'responsive_addons_for_elementor_activation_redirect'
wp transient delete 'rea_to_rae_migration_complete'
wp transient delete 'responsive_addons_for_elementor_intial_timeout'
wp transient delete 'responsive_addons_for_elementor_timeout'
wp transient delete 'rael_template_imported_any'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rael-custom-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rael-custom-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rael-custom-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rael-custom-link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rael-categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rael-categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rael-categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rael-categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rael_hf_include_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rael_hf_include_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rael_hf_include_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rael_hf_include_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rael_hf_exclude_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rael_hf_exclude_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rael_hf_exclude_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rael_hf_exclude_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rael_hf_target_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rael_hf_target_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rael_hf_target_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rael_hf_target_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rael_hf_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rael_hf_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rael_hf_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rael_hf_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rael-hf__enable-for-canvas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rael-hf__enable-for-canvas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rael-hf__enable-for-canvas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rael-hf__enable-for-canvas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rael_has_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rael_has_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rael_has_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rael_has_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rael_template_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rael_template_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rael_template_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rael_template_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rael_selectcategory_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rael_selectcategory_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rael_selectcategory_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rael_selectcategory_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_intro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_intro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_intro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_intro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
