#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'order_cancel_cancellation_approval'
wp option delete 'order_return_enable_return'
wp option delete 'order_return_approval'
wp option delete 'order_return_order_status'
wp option delete 'woocommerce_order_cancel_request_settings'
wp option delete 'order_cancel_enable_cancellation'
wp option delete 'wc_order_splitter_premium_license_status'
wp option delete 'order_cancel_order_status'
wp option delete 'order_cancel_reasons'
wp option delete 'order_return_reasons'
wp option delete 'order_cancel_available_time'
wp option delete 'order_return_available_time'
wp option delete 'yoorc_customization_form_border'
wp option delete 'yoorc_customization_form_color'
wp option delete 'yoorc_customization_form_shadow'
wp option delete 'yoorc_customization_form_submit_button'
wp option delete 'yoorc_customization_form_close_button'
wp option delete 'yoohw_settings_disable_menu'
wp option delete 'woocommerce_new_order_recipient'
wp option delete 'woocommerce_default_country'
wp option delete 'wc_order_cancellation_return_version'
wp option delete 'woocommerce_email_footer_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_cancel_return_activation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_cancel_return_activation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_cancel_return_activation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_cancel_return_activation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_cancel_return_never_show_again'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_cancel_return_never_show_again'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_cancel_return_never_show_again'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_cancel_return_never_show_again'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_advanced_order_manager_ads_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_advanced_order_manager_ads_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_advanced_order_manager_ads_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_advanced_order_manager_ads_time'"
