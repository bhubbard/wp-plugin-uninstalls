#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fk_memory_limit'
wp option delete 'wffn_first_v'
wp option delete '_wffn_db_version'
wp option delete 'woocommerce_currency_pos'
wp option delete 'fb_site_options'
wp option delete '_wffn_scheduled_funnel_id'
wp option delete '_wffn_onboarding_completed'
wp option delete 'active_sitewide_plugins'
wp option delete 'fk_fb_active_date'
wp option delete '_bwfan_onboarding_completed'
wp option delete 'bwf_gen_config'
wp option delete '_bwf_db_upgrade'
wp option delete 'woofunnel_hide_update_notice'
wp option delete '_wfacp_global_settings'
wp option delete 'wfacp_global_notifications'
wp option delete '_bwf_global_funnel'
wp option delete '_bwf_order_threshold'
wp option delete 'bwf_is_opted'
wp option delete '_bwf_db_table_list'
wp option delete '_bwf_conversion_threshold'
wp option delete '_bwf_conversion_offset'
wp option delete 'bwf_needs_rewrite'
wp option delete 'bwf_is_opted_email'
wp option delete 'bwf_is_opted_data'
wp option delete '_pixel_cog_tax_calculating'
wp option delete '_pixel_cost_of_goods_cost_type'
wp option delete '_pixel_cost_of_goods_cost_val'
wp option delete 'oxygen_vsb_universal_css_cache'
wp option delete 'woofunnels_plugins_info'
wp option delete '_bwf_optin_conversion_offset'
wp option delete '_fk_conversion_upgrade'
wp option delete 'wffn_email_notification_updated'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete '_bwf_optin_conversion_threshold'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_ship_to_countries'
wp option delete '_bwf_fb_templates'
wp option delete 'elementor_css_print_method'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'wc_constant_contact_subscribe_checkbox_label'
wp option delete 'wc_constant_contact_subscribe_checkbox_default'
wp option delete 'receiptful_marketing_optin'
wp option delete 'receiptful_marketing_optin_text'
wp option delete 'klaviyo_settings'
wp option delete 'woocommerce_eu_vat_number_b2b'
wp option delete 'woocommerce_eu_vat_number_field_label'
wp option delete 'woocommerce_eu_vat_number_field_description'
wp option delete 'omnisend_checkout_opt_in_text'
wp option delete 'sg_enable_picker'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%order_payment_plan_form_position'"
wp option delete 'thwcfe_sections'
wp option delete 'tickera_general_setting'
wp option delete 'ffl_init_map_location'
wp option delete 'ffl_api_key_option'
wp option delete 'ffl_api_gmaps_option'
wp option delete 'ffl_api_warning_message'
wp option delete 'orddd_lite_enable_delivery_date'
wp option delete 'woocommerce_enable_shipping_field_phone'
wp option delete 'woocommerce_enable_shipping_field_email'
wp option delete 'vat_options_label'
wp option delete 'wc_sendinblue_settings'
wp option delete 'woocommerce_postnl_checkout_settings'
wp option delete 'ywpar_birthday_date_field_where'
wp option delete 'woocommerce_stripe_settings'
wp option delete 'wc_checkout_add_ons_position'
wp option delete 'woocommerce_gzdp_enable_vat_check'
wp option delete 'cfturnstile_woo_checkout_pos'
wp option delete 'woocommerce_myparcel_checkout_settings'
wp option delete 'woocommerce-coupon-messages'
wp option delete 'woocommerce_gls_relais_settings'
wp option delete 'gls_settings_gmaps_enable'
wp option delete 'wc_social_login_text'
wp option delete 'zasielkovna_shipping_method'
wp option delete '_woopq_type'
wp option delete '_woopq_step'
wp option delete '_woopq_min'
wp option delete '_woopq_max'
wp option delete 'activecampaign_for_woocommerce_settings'
wp option delete 'woocommerce_currency'
wp option delete 'wcbcf_settings'
wp option delete 'alg_wc_cpp_shop_behaviour'
wp option delete 'globalWooCommerceEventsAttendeeFieldsPos'
wp option delete 'iw_tcs_settings'
wp option delete 'sv_wc_apple_pay_enabled'
wp option delete 'woocommerce_parcelpro_shipping_settings'
wp option delete 'woocommerce_wcnlpc_full_field_names'
wp option delete 'wc_settings_tab_signature_pad_display_position'
wp option delete 'ywgc_apply_gift_card_on_coupon_form'
wp option delete 'ywgc_apply_coupon_label_text'
wp option delete 'woocommerce_checkout_address_2_field'
wp option delete 'woocommerce_checkout_company_field'
wp option delete 'woocommerce_default_customer_address'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'wfacp_db_ver_2_1'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_shipping_cost_requires_address'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_checkout_highlight_required_fields'
wp option delete 'wffn_lp_settings'
wp option delete '_wfopp_db_version'
wp option delete 'wffn_op_settings'
wp option delete 'wffn_tp_settings'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'bwf_heartbeat_run'
wp option delete 'woocs'
wp option delete '_bwf_last_offsets'
wp option delete '_bwf_offset'
wp option delete '_bwf_contacts_last_offsets'
wp option delete '_bwf_contacts_offset'
wp option delete '_bwf_contacts_threshold'
wp option delete '_bwf_migrate_contacts_indexing'
wp option delete '_bwf_created_tables'
wp option delete 'litespeed.conf.cache-exc'
wp option delete 'litespeed.conf.cache-exc_roles'
wp option delete 'litespeed.conf.cache-exc_qs'
wp option delete 'mo_api_authentication_protectedrestapi_route_whitelist'
wp option delete 'WpFastestCacheExclude'
wp option delete 'woofunnels_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wf_notification_list_%'"
wp option delete 'woofunnels_optin_ref'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woofunnels_track_day'
wp option delete '_bwf_upgrade_1_9_14'

# Delete Transients
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wffn_sticky_banner_dismissed_%' OR option_name LIKE '_site_transient_wffn_sticky_banner_dismissed_%'"
wp transient delete 'elementor_activation_redirect'
wp transient delete '_wc_activation_redirect'
wp transient delete 'bwfan_stop_async_call'
wp transient delete 'woofunnels_get_modules'
wp transient delete 'fk_license_check_api_call_init'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'fk_remove_optimize_conversion_table_schedule'
wp cron event delete 'fk_optimize_conversion_table_analytics'
wp cron event delete 'wffn_performance_notification'
wp cron event delete 'bwf_track_usage_scheduled_single'
wp cron event delete 'fk_fb_every_day'
wp cron event delete 'fk_fb_every_4_minute'
wp cron event delete 'woofunnels_optin_success_track_scheduled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwf_notifications_close'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwf_notifications_close'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwf_notifications_close'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwf_notifications_close'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wffn_welcome_note_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wffn_welcome_note_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wffn_welcome_note_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wffn_welcome_note_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wffn_bump_promotion_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wffn_bump_promotion_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wffn_bump_promotion_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wffn_bump_promotion_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wffn_upsell_promotion_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wffn_upsell_promotion_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wffn_upsell_promotion_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wffn_upsell_promotion_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwf_in_funnel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_funnel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_funnel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_funnel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_funnel_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_checkout_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_checkout_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_checkout_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_checkout_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_selected_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_selected_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_selected_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_selected_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_product_switcher_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_product_switcher_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_product_switcher_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_product_switcher_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfocu_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfocu_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfocu_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfocu_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_selected_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_selected_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_selected_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_selected_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wffn_step_custom_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wffn_step_custom_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wffn_step_custom_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wffn_step_custom_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfocu_custom_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfocu_custom_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfocu_custom_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfocu_custom_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfocu_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfocu_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfocu_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfocu_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfop_selected_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfop_selected_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfop_selected_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfop_selected_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wftp_selected_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wftp_selected_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wftp_selected_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wftp_selected_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wflp_selected_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wflp_selected_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wflp_selected_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wflp_selected_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfoty_selected_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfoty_selected_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfoty_selected_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfoty_selected_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shortcode_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shortcode_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shortcode_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shortcode_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfop_page_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfop_page_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfop_page_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfop_page_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfop_page_custom_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfop_page_custom_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfop_page_custom_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfop_page_custom_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wffn_actions_custom_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wffn_actions_custom_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wffn_actions_custom_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wffn_actions_custom_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_funnel_steps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_funnel_steps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_funnel_steps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_funnel_steps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwf_ab_variation_of'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwf_ab_variation_of'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwf_ab_variation_of'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwf_ab_variation_of'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pixel_cost_of_goods_cost_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pixel_cost_of_goods_cost_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pixel_cost_of_goods_cost_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pixel_cost_of_goods_cost_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pixel_cost_of_goods_cost_val'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pixel_cost_of_goods_cost_val'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pixel_cost_of_goods_cost_val'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pixel_cost_of_goods_cost_val'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'et_enqueued_post_fonts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'et_enqueued_post_fonts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'et_enqueued_post_fonts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'et_enqueued_post_fonts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wffn_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wffn_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wffn_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wffn_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_other_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_other_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_other_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_other_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tobe_import_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tobe_import_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tobe_import_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tobe_import_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tobe_import_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tobe_import_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tobe_import_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tobe_import_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_el_product_switcher_us_a_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_el_product_switcher_us_a_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_el_product_switcher_us_a_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_el_product_switcher_us_a_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bricks_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bricks_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bricks_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bricks_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_experiment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_experiment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_experiment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_experiment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bwf_source_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bwf_source_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bwf_source_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bwf_source_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_default_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_default_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_default_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_default_checkout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_field_label_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_field_label_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_field_label_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_field_label_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bwfblock_default_font'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bwfblock_default_font'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bwfblock_default_font'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bwfblock_default_font'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_regular_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_sale_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_sale_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_sale_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_sale_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_price%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_price%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_price%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_price%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'breakdance_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'breakdance_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'breakdance_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'breakdance_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_breakdance_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_step'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woopq_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woopq_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woopq_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woopq_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variable_regular_currency_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variable_regular_currency_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variable_regular_currency_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variable_regular_currency_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variable_sale_currency_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variable_sale_currency_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variable_sale_currency_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variable_sale_currency_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fifu_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_allowed_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_allowed_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_allowed_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_allowed_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_allowed_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_allowed_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_allowed_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_allowed_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebanx_billing_brazil_document'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebanx_billing_brazil_document'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebanx_billing_brazil_document'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebanx_billing_brazil_document'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebanx_billing_brazil_cnpj'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebanx_billing_brazil_cnpj'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebanx_billing_brazil_cnpj'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebanx_billing_brazil_cnpj'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebanx_billing_chile_document'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebanx_billing_chile_document'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebanx_billing_chile_document'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebanx_billing_chile_document'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebanx_billing_colombia_document'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebanx_billing_colombia_document'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebanx_billing_colombia_document'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebanx_billing_colombia_document'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebanx_billing_peru_document'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebanx_billing_peru_document'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebanx_billing_peru_document'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebanx_billing_peru_document'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebanx_billing_argentina_document'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebanx_billing_argentina_document'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebanx_billing_argentina_document'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebanx_billing_argentina_document'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcb_editor_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcb_editor_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcb_editor_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcb_editor_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcb_editor_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wfacp_woodmart_clear_cached'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wfacp_woodmart_clear_cached'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wfacp_woodmart_clear_cached'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wfacp_woodmart_clear_cached'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_save_address_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_save_address_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_save_address_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_save_address_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_page_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_page_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_page_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_page_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_fieldsets_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_fieldsets_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_fieldsets_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_fieldsets_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_page_modern_label_migrate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_page_modern_label_migrate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_page_modern_label_migrate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_page_modern_label_migrate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_page_layout_bck'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_page_layout_bck'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_page_layout_bck'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_page_layout_bck'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_fieldsets_data_bck'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_fieldsets_data_bck'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_fieldsets_data_bck'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_fieldsets_data_bck'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_selected_products_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_selected_products_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_selected_products_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_selected_products_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_page_custom_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_page_custom_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_page_custom_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_page_custom_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_aero_checkout_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_aero_checkout_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_aero_checkout_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_aero_checkout_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wffn_form_customization_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wffn_form_customization_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wffn_form_customization_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wffn_form_customization_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcf-step-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_created_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_created_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_created_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_created_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfty_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfty_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfty_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfty_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
