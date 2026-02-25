#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crt_manage_license'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_key_limit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_key_usage'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_name'"
wp option delete 'crt_ignore_wp_rocket_js'
wp option delete 'crt_ignore_wp_optimize_js'
wp option delete 'crt_ignore_wp_optimize_css'
wp option delete 'crt_mailchimp_api_key'
wp option delete 'crt_recaptcha_v3_site_key'
wp option delete 'crt_recaptcha_v3_secret_key'
wp option delete 'crt_woo_shop_ppp'
wp option delete 'crt_woo_shop_cat_ppp'
wp option delete 'crt_woo_shop_tag_ppp'
wp option delete 'crt_compare_page'
wp option delete 'crt_wishlist_page'
wp option delete 'crt_override_woo_templates'
wp option delete 'crt_override_woo_cart'
wp option delete 'crt_override_woo_mini_cart'
wp option delete 'crt_recaptcha_v3_score'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_email_content_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_email_fields_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_meta_keys_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_referrer_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_referrer_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_email_to_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_email_subject_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_cc_header_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_bcc_header_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_reply_to_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_email_from_name_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_email_from_%'"
wp option delete 'crt_wl_plugin_links'
wp option delete 'elementor_css_print_method'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_form_upload_field_in_use_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_webhook_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_instagram_posts_limit%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_instagram_access_token_to_compare%'"
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'crt_add_wishlist_to_my_account'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'crt_enable_woo_flexslider_navigation'
wp option delete 'crt_sidebar_button_show_cart'
wp option delete 'crt_sidebar_button_show_checkout'
wp option delete 'crt_footer_conditions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt-element-%'"
wp option delete 'crt_single_conditions'
wp option delete 'st_attachments'
wp option delete 'royal_elementor_addons_activation_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crt_cpt_ppp_%'"
wp option delete 'crt_enable_product_image_zoom'
wp option delete 'crt_remove_wc_default_lightbox'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'crt_manage_user_avatars_caps'
wp option delete 'woocommerce_cart'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'wpforms_activation_redirect'
wp option delete 'aioseo_activation_redirect'
wp option delete 'wp_mail_smtp_activation_prevent_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'crt_manage_tenzin_import_content'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_crt_instagram_access_token%' OR option_name LIKE '_site_transient_crt_instagram_access_token%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_crt_instagram_access_token_expires_in%' OR option_name LIKE '_site_transient_crt_instagram_access_token_expires_in%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_crt_instagram_access_token_generation_date%' OR option_name LIKE '_site_transient_crt_instagram_access_token_generation_date%'"
wp transient delete 'ocdi_importer_data'
wp transient delete 'ocdi_importer_data_failed_attachment_imports'
wp transient delete 'ocdi_import_menu_mapping'
wp transient delete 'ocdi_import_posts_with_nav_block'
wp transient delete '_rafflepress_welcome_screen_activation_redirect'
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete '_seedprod_welcome_screen_activation_redirect'
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'pt_importer_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'crt-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'crt-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'crt-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'crt-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_action_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crt_form_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crt_form_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crt_form_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crt_form_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crt_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crt_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crt_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crt_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crt_form_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crt_form_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crt_form_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crt_form_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crt_form_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crt_form_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crt_form_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crt_form_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crt_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crt_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crt_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crt_user_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crt_user_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crt_user_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crt_user_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crt_user_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crt_submission_read_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crt_submission_read_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crt_submission_read_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crt_submission_read_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_date_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_date_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_date_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_date_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_crt_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_crt_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_crt_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_crt_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%archive-all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%archive-all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%archive-all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%archive-all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%archive-author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%archive-author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%archive-author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%archive-author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%archive-search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%archive-search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%archive-search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%archive-search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%archive-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%archive-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%archive-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%archive-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%archive-product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%archive-product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%archive-product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%archive-product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%archive-product-cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%archive-product-cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%archive-product-cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%archive-product-cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%archive-product-tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%archive-product-tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%archive-product-tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%archive-product-tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%archive-product-search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%archive-product-search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%archive-product-search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%archive-product-search'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%post-categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%post-categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%post-categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%post-categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%post-tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%post-tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%post-tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%post-tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crt_wishlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crt_wishlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crt_wishlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crt_wishlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crt_secondary_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crt_secondary_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crt_secondary_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crt_secondary_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crt_compare'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crt_compare'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crt_compare'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crt_compare'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crt_manage_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crt_manage_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crt_manage_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crt_manage_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocdi_precreated_demo_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocdi_precreated_demo_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocdi_precreated_demo_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocdi_precreated_demo_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
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
