#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nbd_live_chat_faqs'
wp option delete 'nbdesigner_default_background'
wp option delete 'nbdesigner_default_overlay'
wp option delete 'nbdesigner_studio_page_id'
wp option delete 'nbdesigner_create_your_own_page_id'
wp option delete 'nbdesigner_logged_page_id'
wp option delete 'nbdesigner_gallery_page_id'
wp option delete 'nbdesigner_designer_page_id'
wp option delete 'nbdesigner_product_builder_page_id'
wp option delete 'nbdesigner_version_plugin'
wp option delete 'nbdesigner_printcart_api_unauth_token'
wp option delete 'nbdesigner_printcart_api_access_token'
wp option delete 'nbdesigner_printcart_api_email'
wp option delete 'nbdesigner_printcart_api_sid'
wp option delete 'nbdesigner_printcart_api_secret'
wp option delete 'printcart_store_tier'
wp option delete 'nbdesigner_printcart_first_imported_products'
wp option delete 'nbdesigner_dimensions_unit'
wp option delete 'nbdesigner_default_font_subset'
wp option delete 'nbdesigner_notifications_recurrence'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'nbdesigner_notifications'
wp option delete 'nbdesigner_license'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'nbdesigner_advanced_upload_page_id'
wp option delete 'nbdesigner_simple_upload_page_id'
wp option delete 'nbdesigner_guideline_mimes'
wp option delete 'nbdesigner_notifications_emails'
wp option delete 'nbdesigner_enable_send_mail_when_approve'
wp option delete 'nbdesigner_admin_emails'
wp option delete 'nbdesigner_attachment_admin_email'
wp option delete 'nbdesigner_raq_form'
wp option delete 'nbdesigner_raq_page_id'
wp option delete 'nbdq-flush-rewrite-rules'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'nbdesigner_template_mapping_fields'
wp option delete 'nbdesigner_template_vcard_fields'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'nbdesigner_artist_gallery_column'
wp option delete 'nbdesigner_gallery_hide_sidebar'
wp option delete 'nbdesigner_gallery_column'
wp option delete 'nbdesigner_gallery_gutter'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nbo_product_%' OR option_name LIKE '_site_transient_nbo_product_%'"
wp transient delete 'nbd_live_chat_helper'
wp transient delete 'nbd_list_products'
wp transient delete 'nbd_number_of_products'
wp transient delete 'nbd_designers'
wp transient delete 'nbd_all_settings'
wp transient delete 'nbd_all_frontend_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nbd_design_products_cat_%' OR option_name LIKE '_site_transient_nbd_design_products_cat_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nbd_upgrade_%' OR option_name LIKE '_site_transient_nbd_upgrade_%'"
wp transient delete 'nbd_global_template_cat'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nbd_global_templates%' OR option_name LIKE '_site_transient_nbd_global_templates%'"
wp transient delete 'nbd_frontend_products'
wp transient delete 'woocommerce_test_remote_post'
wp transient delete 'woocommerce_test_remote_get'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nbo_action_%' OR option_name LIKE '_site_transient_nbo_action_%'"
wp transient delete 'nbd_design_category'
wp transient delete '_nbd_activation_redirect'
wp transient delete 'nbd_last_time_check_upload_files'
wp transient delete 'nbd_upgrade_news_web-to-print-online-designer'
wp transient delete 'nbd_flaticon_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nbo_available_variations_%' OR option_name LIKE '_site_transient_nbo_available_variations_%'"

# Clear Cron Jobs
wp cron event delete 'nbdesigner_admin_notifications_event'
wp cron event delete 'nbd_w3_flush_cache'
wp cron event delete 'nbdesigner_lincense_event'
wp cron event delete 'printcart_check_license_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbes_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbes_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbes_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbes_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_designer_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_designer_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_designer_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_designer_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nbd_create_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nbd_create_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nbd_create_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nbd_create_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nbd_artist_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nbd_artist_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nbd_artist_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nbd_artist_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdesigner_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdesigner_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdesigner_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdesigner_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdesigner_enable_upload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdesigner_enable_upload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdesigner_enable_upload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdesigner_enable_upload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdesigner_enable_upload_without_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdesigner_enable_upload_without_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdesigner_enable_upload_without_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdesigner_enable_upload_without_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdesigner_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdesigner_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdesigner_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdesigner_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdesigner_upload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdesigner_upload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdesigner_upload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdesigner_upload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbd_faq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbd_faq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbd_faq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbd_faq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbo_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbo_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbo_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbo_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbls_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbls_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbls_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbls_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbls_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbls_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbls_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbls_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbls_keys_string'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbls_keys_string'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbls_keys_string'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbls_keys_string'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbes_enable_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbes_enable_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbes_enable_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbes_enable_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_nbdesigner_enable%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_nbdesigner_enable%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_nbdesigner_enable%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_nbdesigner_enable%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_nbdesigner_variation_enable%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_nbdesigner_variation_enable%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_nbdesigner_variation_enable%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_nbdesigner_variation_enable%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_designer_setting%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_designer_setting%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_designer_setting%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_designer_setting%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_designer_variation_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_designer_variation_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_designer_variation_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_designer_variation_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdesigner_variation_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdesigner_variation_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdesigner_variation_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdesigner_variation_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdpb_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdpb_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdpb_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdpb_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nbd_auto_approve_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nbd_auto_approve_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nbd_auto_approve_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nbd_auto_approve_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdg_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdg_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdg_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdg_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdg_tab_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdg_tab_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdg_tab_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdg_tab_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdg_tab_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdg_tab_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdg_tab_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdg_tab_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbd_profile_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbd_profile_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbd_profile_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbd_profile_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nbd_sell_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nbd_sell_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nbd_sell_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nbd_sell_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdesigner_dpi'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdesigner_dpi'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdesigner_dpi'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdesigner_dpi'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdq_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdq_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdq_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdq_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nbd_feature_designer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nbd_feature_designer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nbd_feature_designer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nbd_feature_designer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nbd_designer_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nbd_designer_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nbd_designer_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nbd_designer_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbpt_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbpt_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbpt_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbpt_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbpt_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbpt_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbpt_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbpt_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbo_snippet_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbo_snippet_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbo_snippet_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbo_snippet_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nbdesigner_admintemplate_primary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nbdesigner_admintemplate_primary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nbdesigner_admintemplate_primary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nbdesigner_admintemplate_primary'"
