#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailjet_multisite_support'
wp option delete 'mailjet_woo_abandoned_cart_activate'
wp option delete 'api_credentials_ok'
wp option delete 'mailjet_apikey'
wp option delete 'mailjet_apisecret'
wp option delete 'mailjet_activate_logger'
wp option delete 'settings_step'
wp option delete 'activate_mailjet_sync'
wp option delete 'mailjet_sync_list'
wp option delete 'activate_mailjet_initial_sync'
wp option delete 'create_contact_list_btn'
wp option delete 'create_list_name'
wp option delete 'skip_mailjet_list'
wp option delete 'mailjet_enabled'
wp option delete 'mailjet_from_name'
wp option delete 'mailjet_from_email'
wp option delete 'mailjet_port'
wp option delete 'mailjet_ssl'
wp option delete 'mailjet_from_email_extra'
wp option delete 'mailjet_from_email_extra_hidden'
wp option delete 'mailjet_test_address'
wp option delete 'send_test_email_btn'
wp option delete 'activate_mailjet_comment_authors_sync'
wp option delete 'mailjet_comment_authors_list'
wp option delete 'activate_mailjet_woo_integration'
wp option delete 'mailjet_woo_edata_sync'
wp option delete 'mailjet_woo_checkout_checkbox'
wp option delete 'mailjet_woo_checkout_box_text'
wp option delete 'mailjet_woo_register_checkbox'
wp option delete 'mailjet_woo_register_box_text'
wp option delete 'mailjet_woo_banner_checkbox'
wp option delete 'mailjet_woo_banner_text'
wp option delete 'mailjet_woo_banner_label'
wp option delete 'activate_mailjet_cf7_integration'
wp option delete 'activate_mailjet_cf7_sync'
wp option delete 'mailjet_cf7_list'
wp option delete 'cf7_email'
wp option delete 'cf7_fromname'
wp option delete 'crypto_hash'
wp option delete 'contacts_list_ok'
wp option delete 'activate_mailjet_woo_sync'
wp option delete 'mailjet_plugin_version'
wp option delete 'mailjet_access_administrator'
wp option delete 'mailjet_access_author'
wp option delete 'mailjet_access_editor'
wp option delete 'mailjet_access_contributor'
wp option delete 'mailjet_access_subscriber'
wp option delete 'mailjet_thank_you_page_Italian'
wp option delete 'mailjet_thank_you_page_Spanish'
wp option delete 'mailjet_thank_you_page_German'
wp option delete 'mailjet_thank_you_page_English'
wp option delete 'mailjet_thank_you_page_French'
wp option delete 'mailjet_locale_subscription_list_it_IT'
wp option delete 'mailjet_locale_subscription_list_es_ES'
wp option delete 'mailjet_locale_subscription_list_en_US'
wp option delete 'mailjet_locale_subscription_list_fr_FR'
wp option delete 'mailjet_locale_subscription_list_de_DE'
wp option delete 'mailjet_post_update_message'
wp option delete 'mj_profile_name'
wp option delete 'mailjet_woo_abandoned_cart_sending_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mailjet_%'"
wp option delete 'mailjet_wc_active_hooks'
wp option delete 'mailjet_order_notifications'
wp option delete 'mailjet_wc_abandoned_cart_active_hooks'
wp option delete 'widget_wp_mailjet_subscribe_widget'
wp option delete 'widget_mailjet'
wp option delete 'mailjet_woocommerce_abandoned_cart'
wp option delete 'mailjet_woocommerce_order_confirmation'
wp option delete 'mailjet_woocommerce_shipping_confirmation'
wp option delete 'mailjet_woocommerce_refund_confirmation'
wp option delete 'mailjet_widget_options'

# Clear Cron Jobs
wp cron event delete 'bl_cron_hook'
wp cron event delete 'abandoned_cart_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailjet_subscribe_ok'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailjet_subscribe_ok'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailjet_subscribe_ok'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailjet_subscribe_ok'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailjet_woo_subscribe_ok'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailjet_woo_subscribe_ok'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailjet_woo_subscribe_ok'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailjet_woo_subscribe_ok'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'processing_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'processing_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'processing_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'processing_email_sent'"
