#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webpushr_private_key'
wp option delete 'webpushr_auth_token'
wp option delete 'webpushr_public_key'
wp option delete 'wpp_enable_for_post'
wp option delete 'wpp_default_for_post'
wp option delete 'wpp_default_for_post_update'
wp option delete 'wpp_post_message'
wp option delete 'wpp_post_title'
wp option delete 'wpp_post_type'
wp option delete 'wpp_auto_hide'
wp option delete 'wpp_post_image'
wp option delete 'wpp_post_icon'
wp option delete 'wpp_post_sendTo'
wp option delete 'wpp_disable_prompt_code'
wp option delete 'webpushr_enable_woo_new_prod'
wp option delete 'webpushr_woo_new_prod_title'
wp option delete 'webpushr_woo_new_prod_message'
wp option delete 'webpushr_woo_prod_icon'
wp option delete 'webpushr_woo_prod_image'
wp option delete 'webpushr_woo_prod_url'
wp option delete 'webpushr_woo_price_drop_title'
wp option delete 'webpushr_woo_price_drop_message'
wp option delete 'webpushr_woo_price_drop_icon'
wp option delete 'webpushr_woo_price_drop_image'
wp option delete 'webpushr_woo_price_drop_url'
wp option delete 'webpushr_woo_sale_title'
wp option delete 'webpushr_woo_sale_message'
wp option delete 'webpushr_woo_sale_icon'
wp option delete 'webpushr_woo_sale_image'
wp option delete 'webpushr_woo_sale_url'
wp option delete 'webpushr_enable_abandoned_cart'
wp option delete 'webpushr_woo_abandoned_cart_title'
wp option delete 'webpushr_woo_abandoned_cart_message'
wp option delete 'webpushr_woo_abandoned_cart_icon'
wp option delete 'webpushr_woo_abandoned_cart_image'
wp option delete 'webpushr_woo_abandoned_cart_url'
wp option delete 'webpushr_woo_abandoned_cart_frequency'
wp option delete 'webpushr_woo_abandoned_cart_interval'
wp option delete 'wpp_utm_parameter'
wp option delete 'webpushr_woo_price_drop_show'
wp option delete 'webpushr_woo_sale_price_show'
wp option delete 'woocommerce_currency'

# Delete Transients
wp transient delete 'webpushr_notification_sent'

# Clear Cron Jobs
wp cron event delete 'webpushr_abandoned_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpp_send_notification_for_new_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpp_send_notification_for_new_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpp_send_notification_for_new_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpp_send_notification_for_new_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webpushr_notification_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webpushr_notification_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webpushr_notification_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webpushr_notification_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webpushr_notification_body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webpushr_notification_body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webpushr_notification_body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webpushr_notification_body'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webpushr_notification_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webpushr_notification_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webpushr_notification_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webpushr_notification_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webpushr_segment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webpushr_segment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webpushr_segment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webpushr_segment'"
