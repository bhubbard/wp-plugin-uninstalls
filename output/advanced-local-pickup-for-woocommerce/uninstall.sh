#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pickup_instruction_customize_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_order_settings'"
wp option delete 'orderStatus'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_default_country'
wp option delete 'wclp_store_days'
wp option delete 'location_defualt'
wp option delete 'wclp_status_ready_pickup'
wp option delete 'wclp_ready_pickup_status_label_color'
wp option delete 'wclp_ready_pickup_status_label_font_color'
wp option delete 'woocommerce_customer_ready_pickup_order_settings'
wp option delete 'wclp_status_picked_up'
wp option delete 'wclp_pickup_status_label_color'
wp option delete 'wclp_pickup_status_label_font_color'
wp option delete 'woocommerce_customer_pickup_order_settings'
wp option delete 'wclp_processing_additional_content'
wp option delete 'wclp_show_pickup_instruction'
wp option delete 'customizer_pickup_order_settings_enabled'
wp option delete 'customizer_ready_pickup_order_settings_enabled'
wp option delete 'wclp_local_pickup'
wp option delete 'wclp_show_address_email'
wp option delete 'wclp_show_address_order_received'
wp option delete 'wclp_show_address_order_my_account'
wp option delete 'wclp_default_country'
wp option delete 'wclp_default_single_country'
wp option delete 'wclp_default_single_state'
wp option delete 'wclp_default_time_format'
wp option delete 'wclp_store_name'
wp option delete 'wclp_store_address'
wp option delete 'woocommerce_store_address'
wp option delete 'wclp_store_address_2'
wp option delete 'woocommerce_store_address_2'
wp option delete 'wclp_store_city'
wp option delete 'woocommerce_store_city'
wp option delete 'wclp_store_postcode'
wp option delete 'woocommerce_store_postcode'
wp option delete 'wclp_store_instruction'
wp option delete 'wclp_pickup_locations'
wp option delete 'alp_notice_dismiss179'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'alp_notice_ignore'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_data_selector'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_optin_email_notification'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_usage_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_tracker_last_send'"

# Clear Cron Jobs

