-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wocuf_lite_migration_status', 'wps_upsell_lite_offer_post_ids', 'wps_wocuf_funnels_list', 'wps_wgm_notify_new_banner_id', 'wps_wgm_notify_new_banner_image', 'wps_wgm_notify_new_banner_url', 'wps_wgm_notify_hide_baneer_notification', 'wps_wocuf_enable_plugin', 'wps_upsell_lite_global_options', 'wps_wocuf_store_checkout_fields_billing_data', 'wps_wocuf_store_checkout_fields_shipping_data', 'wps_wocuf_store_checkout_basic_fields_shipping_data', 'wps_wocuf_store_checkout_basic_fields_billing_data', 'wps_upsell_analytics_configuration', 'wps_wocuf_pro_funnel_default_offer_page', 'onboarding-data-sent', 'onboarding-data-skipped', 'wps_wocuf_pro_buy_text', 'wps_wocuf_pro_no_text', 'wps_wocuf_pro_before_offer_price_text', 'wps_wocuf_pro_buy_button_color', 'wps_wocuf_pro_thanks_button_color', 'wps_wocuf_pro_offer_banner_text', 'wps_wocuf_pro_no_offer_text', 'active_sitewide_plugins', 'mwb_wocuf_pro_license_key', 'mwb_wocuf_plugin_update', 'wps_wocuf_pro_license_key', 'mwb_wocuf_pro_activated_timestamp', 'mwb_wocuf_pro_license_check', 'wps_wocuf_pro_activated_timestamp', 'wps_wocuf_pro_license_check', 'wps_upsell_elementor_inactive_notice', 'wps_upsell_default_settings_tab', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_turn_off_automatic_payments';
DELETE FROM wp_options WHERE option_name LIKE 'wps_mmcsfw_symbol_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_css', 'divi_content', 'wps_upsell_funnel_data', 'ct_builder_shortcodes', '_et_pb_page_layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_css', 'divi_content', 'wps_upsell_funnel_data', 'ct_builder_shortcodes', '_et_pb_page_layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_css', 'divi_content', 'wps_upsell_funnel_data', 'ct_builder_shortcodes', '_et_pb_page_layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_css', 'divi_content', 'wps_upsell_funnel_data', 'ct_builder_shortcodes', '_et_pb_page_layout');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%';

