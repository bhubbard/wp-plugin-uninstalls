#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grind_mobile_app_configs'
wp option delete 'grind_mobile_app_api_key'
wp option delete 'grind_mobile_app_site_id'
wp option delete 'grind_mobile_app_woo_consumer_api_key'
wp option delete 'grind_mobile_app_woo_consumer_api_secret'
wp option delete 'grind_mobile_app_onesignal_app_id'
wp option delete 'grind_mobile_app_onesignal_api_key'
wp option delete 'grind_mobile_app_firebase_server_key'
wp option delete 'grind_mobile_app_facebook_app_id'
wp option delete 'grind_mobile_app_facebook_app_secret'
wp option delete 'grind_mobile_app_banner_app_active'
wp option delete 'grind_mobile_app_banner_app_hide_desktop'
wp option delete 'grind_mobile_app_banner_app_logo'
wp option delete 'grind_mobile_app_banner_app_url_apple'
wp option delete 'grind_mobile_app_banner_app_url_google'
wp option delete 'grind_mobile_app_banner_app_title'
wp option delete 'grind_mobile_app_banner_app_desc'
wp option delete 'grind_mobile_app_banner_app_button'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'gmw_options'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_currency'
wp option delete 'grind_mobile_app_onesignal_safari_web_id'

# Delete Transients
wp transient delete 'beyondcart_settings_banner'
wp transient delete 'beyondcart_settings'

# Clear Cron Jobs
wp cron event delete 'cron_update_cached_terms_by_category'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'app_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'app_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'app_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'app_only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mobile_app'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mobile_app'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mobile_app'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mobile_app'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_mobile_app'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_mobile_app'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_mobile_app'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_mobile_app'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbd_login_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbd_login_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbd_login_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbd_login_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbd_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbd_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbd_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbd_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'app_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'app_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'app_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'app_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digt_countrycode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digt_countrycode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digt_countrycode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digt_countrycode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digits_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mbd_subscribe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mbd_subscribe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mbd_subscribe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mbd_subscribe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_volume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_volume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_volume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_volume'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcml_custom_prices_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_image'"
