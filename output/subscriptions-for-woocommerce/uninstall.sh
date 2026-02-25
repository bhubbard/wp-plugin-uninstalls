#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfw_radio_switch_demo'
wp option delete 'wps_sfw_first_subscription_box_id'
wp option delete 'wps_sfw_enable_plugin'
wp option delete 'wps_sfw_add_to_cart_text'
wp option delete 'wps_sfw_place_order_button_text'
wp option delete 'wps_sfw_cancel_subscription_for_customer'
wp option delete 'wps_sfw_enable_subscription_log'
wp option delete 'wsp_api_secret_key'
wp option delete 'wsp_enable_api_features'
wp option delete 'wps_sfw_enable_tracking'
wp option delete 'wps_learnpress_course'
wp option delete 'wps_sfw_enable_plugin '
wp option delete 'wps_sfw_add_to_cart_text '
wp option delete 'wps_sfw_place_order_button_text '
wp option delete 'wps_sfw_multistep_product_create_done'
wp option delete 'woocommerce_wps_paypal_settings'
wp option delete 'wps_sfw_multistep_done'
wp option delete 'wps_wgm_notify_new_banner_id'
wp option delete 'wps_wgm_notify_new_banner_image'
wp option delete 'wps_wgm_notify_new_banner_url'
wp option delete 'wps_wgm_notify_hide_baneer_notification'
wp option delete 'wsp_enable_subscription_box_features'
wp option delete 'wps_sfw_subscription_box_add_to_cart_text'
wp option delete 'wps_sfw_subscription_box_place_order_button_text'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'wps_sfw_onboarding_data_skipped'
wp option delete 'wps_sfw_onboarding_data_sent'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'wpswings_tracker_last_send'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'wsp_allow_shipping_subscription'
wp option delete 'woocommerce_paypal_settings'
wp option delete 'woocommerce_ppec_paypal_settings'
wp option delete 'audit_cybs_number'
wp option delete 'mwb_wsp_license_key'
wp option delete 'active_sitewide_plugins'
wp option delete 'wps_all_plugins_active'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wps_wgm_check_for_notification_update'
wp cron event delete 'wpswings_tracker_send_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_learnpress_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_learnpress_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_learnpress_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_learnpress_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_sfw_step_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_sfw_step_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_sfw_step_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_sfw_step_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_sfw_subscription_box_setup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_sfw_subscription_box_setup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_sfw_subscription_box_setup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_sfw_subscription_box_setup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_sfw_subscription_box_step_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_sfw_subscription_box_step_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_sfw_subscription_box_step_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_sfw_subscription_box_step_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_sfw_subscription_box_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_sfw_subscription_box_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_sfw_subscription_box_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_sfw_subscription_box_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_sfw_subscription_box_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_sfw_subscription_box_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_sfw_subscription_box_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_sfw_subscription_box_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_subscription_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_paypal_subscription_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_paypal_subscription_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_paypal_subscription_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_paypal_subscription_id'"
