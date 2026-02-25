#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eael_setup_wizard'
wp option delete 'elementor_css_print_method'
wp option delete 'eael_js_print_method'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'eael_custom_profile_fields'
wp option delete 'eael_templately_promo_hide'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'eael_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_allow_tracking'
wp option delete 'wpins_last_track_time'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpins_block_notice'
wp option delete 'elementor_controls_usage'
wp option delete 'eael_notice_migration'
wp option delete 'wpdeveloper_plugins_data'
wp option delete 'eael_save_settings'
wp option delete 'eael_br_google_place_api_key'
wp option delete 'formstack_oauth2_code'
wp option delete 'formstack_settings'
wp option delete 'formstack_form_count'
wp option delete 'formstack_forms'
wp option delete 'eael_recaptcha_sitekey'
wp option delete 'eael_cloudflare_turnstile_sitekey'
wp option delete 'eael_cloudflare_turnstile_secretkey'
wp option delete 'eael_recaptcha_sitekey_v3'
wp option delete 'eael_recaptcha_badge_hide'
wp option delete 'eael_recaptcha_language_v3'
wp option delete 'eael_lr_resetpassword_form_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eael_show_reset_password_on_form_submit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eael_lostpassword_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eael_register_errors_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eael_register_success_%'"
wp option delete 'eael_save_typeform_personal_token'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete '_astra_ext_enabled_extensions'
wp option delete 'eael_save_post_duplicator_post_type'
wp option delete 'eael_global_settings'
wp option delete 'elementor_cpt_support'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'eael_save_google_map_api'
wp option delete 'eael_woo_ac_dashboard_custom_tabs'
wp option delete 'eael_save_mailchimp_api'
wp option delete 'eael_recaptcha_secret'
wp option delete 'eael_recaptcha_language'
wp option delete 'eael_recaptcha_secret_v3'
wp option delete 'eael_g_client_id'
wp option delete 'eael_fb_app_id'
wp option delete 'eael_fb_app_secret'
wp option delete 'eael_lr_mailchimp_api_key'
wp option delete 'eael_custom_profile_fields_text'
wp option delete 'eael_custom_profile_fields_img'
wp option delete 'eael_admin_promotion'
wp option delete 'elementor_disabled_elements'
wp option delete 'eael_admin_menu_notice'
wp option delete 'eael_editor_updated_at'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eael_lostpassword_success_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eael_resetpassword_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eael_resetpassword_success_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tf_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tf_user_object'"
wp option delete 'woocommerce_weight_unit'
wp option delete '_wpdeveloper_plugin_pointer_priority'

# Delete Transients
wp transient delete 'eael_reduce_op_table_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eael_post_grid_read_more_button_text_%' OR option_name LIKE '_site_transient_eael_post_grid_read_more_button_text_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eael_post_grid_excerpt_expanison_indicator_%' OR option_name LIKE '_site_transient_eael_post_grid_excerpt_expanison_indicator_%'"
wp transient delete 'eael_do_activation_redirect'
wp transient delete 'eael_bfcm25_pointer_dismiss'
wp transient delete 'wpnotice_priority_time_expired'

# Clear Cron Jobs
wp cron event delete 'eael_remove_unused_options_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eael_widget_elements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eael_widget_elements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eael_widget_elements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eael_widget_elements'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eael_custom_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eael_custom_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eael_custom_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eael_custom_js'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eael_checkout_fields_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eael_checkout_fields_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eael_checkout_fields_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eael_checkout_fields_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doc_category_image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doc_category_image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doc_category_image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doc_category_image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eael_post_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eael_post_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eael_post_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eael_post_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eael_phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eael_phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eael_phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eael_phone_number'"
