#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wocuf_lite_migration_status'
wp option delete 'wps_upsell_lite_offer_post_ids'
wp option delete 'wps_wocuf_funnels_list'
wp option delete 'wps_wgm_notify_new_banner_id'
wp option delete 'wps_wgm_notify_new_banner_image'
wp option delete 'wps_wgm_notify_new_banner_url'
wp option delete 'wps_wgm_notify_hide_baneer_notification'
wp option delete 'wps_wocuf_enable_plugin'
wp option delete 'wps_upsell_lite_global_options'
wp option delete 'wps_wocuf_store_checkout_fields_billing_data'
wp option delete 'wps_wocuf_store_checkout_fields_shipping_data'
wp option delete 'wps_wocuf_store_checkout_basic_fields_shipping_data'
wp option delete 'wps_wocuf_store_checkout_basic_fields_billing_data'
wp option delete 'wps_upsell_analytics_configuration'
wp option delete 'wps_wocuf_pro_funnel_default_offer_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_turn_off_automatic_payments'"
wp option delete 'onboarding-data-sent'
wp option delete 'onboarding-data-skipped'
wp option delete 'wps_wocuf_pro_buy_text'
wp option delete 'wps_wocuf_pro_no_text'
wp option delete 'wps_wocuf_pro_before_offer_price_text'
wp option delete 'wps_wocuf_pro_buy_button_color'
wp option delete 'wps_wocuf_pro_thanks_button_color'
wp option delete 'wps_wocuf_pro_offer_banner_text'
wp option delete 'wps_wocuf_pro_no_offer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wps_mmcsfw_symbol_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'mwb_wocuf_pro_license_key'
wp option delete 'mwb_wocuf_plugin_update'
wp option delete 'wps_wocuf_pro_license_key'
wp option delete 'mwb_wocuf_pro_activated_timestamp'
wp option delete 'mwb_wocuf_pro_license_check'
wp option delete 'wps_wocuf_pro_activated_timestamp'
wp option delete 'wps_wocuf_pro_license_check'

# Delete Transients
wp transient delete 'wps_upsell_elementor_inactive_notice'
wp transient delete 'wps_upsell_default_settings_tab'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wps_wgm_check_for_notification_update'
wp cron event delete 'wps_wocuf_lite_order_cron_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'divi_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_upsell_funnel_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_upsell_funnel_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_upsell_funnel_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_upsell_funnel_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wps_upsell_simple_shipping_product_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_page_layout'"
