#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pushalert_enable_for'
wp option delete '_pushalert_enable_auto_sw_manifest'
wp option delete 'pushalert_config_id'
wp option delete '_pushalert_abandoned_cart'
wp option delete '_pushalert_out_of_stock'
wp option delete '_pushalert_price_drop'
wp option delete '_pushalert_shipment_alert'
wp option delete '_pushalert_woocommerce_enable'
wp option delete 'pushalert_api_key'
wp option delete 'pushalert_web_id'
wp option delete '_pushalert_version'
wp option delete 'woocommerce_settings_pushalert_auto_assoc_yes'
wp option delete 'woocommerce_settings_pushalert_auto_assoc_no'
wp option delete 'woocommerce_settings_pushalert_auto_assoc'
wp option delete 'pushalert_sender_id'
wp option delete 'pushalert_default_title'
wp option delete 'pushalert_utm_source'
wp option delete 'pushalert_utm_medium'
wp option delete 'pushalert_utm_campaign'
wp option delete 'pushalert_default_expiry'
wp option delete 'pushalert_plugin_activation'
wp option delete 'pushalert_large_image'
wp option delete '_pushalert_cookie_id'
wp option delete 'pushalert_encrypt_key'
wp option delete 'woocommerce_settings_pushalert_association_css'
wp option delete 'woocommerce_settings_pushalert_confirm_message'
wp option delete 'woocommerce_settings_pushalert_button_yes'
wp option delete 'woocommerce_settings_pushalert_button_no'
wp option delete 'woocommerce_settings_pushalert_dashboard_option'
wp option delete '_pushalert_send_to_custom'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushalert_notification_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushalert_notification_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushalert_notification_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushalert_notification_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushalert_notification_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushalert_notification_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushalert_notification_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushalert_notification_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushalert_notification_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushalert_notification_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushalert_notification_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushalert_notification_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushalert_notification_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushalert_notification_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushalert_notification_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushalert_notification_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushalert_utm_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushalert_utm_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushalert_utm_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushalert_utm_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushalert_utm_medium'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushalert_utm_medium'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushalert_utm_medium'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushalert_utm_medium'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushalert_utm_campaign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushalert_utm_campaign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushalert_utm_campaign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushalert_utm_campaign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pushalert_publish_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pushalert_publish_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pushalert_publish_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pushalert_publish_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_persistent_cart'"
