#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'd7sms_enable_plugin'
wp option delete 'd7sms_sms_gateway'
wp option delete 'd7sms_customer_notification'
wp option delete 'd7sms_active_charsets'
wp option delete 'd7sms_enable_sms_length'
wp option delete 'd7sms_sms_length'
wp option delete 'd7sms_sms_active_send'
wp option delete 'd7sms_checkout_checkbox_value'
wp option delete 'd7sms_checkout_checkbox_text'
wp option delete 'woocommerce_default_country'
wp option delete 'd7sms_message_admin'
wp option delete 'd7sms_admin_phone'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'd7sms_message_%'"
wp option delete 'd7sms_message_generic'
wp option delete 'd7_wpv_vendors_enable_sms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'd7sms_sms_active_send_vendor_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'd7sms_admin_phone_vendor_%'"
wp option delete 'd7sms_from_asid'
wp option delete 'd7sms_from_number'
wp option delete 'd7sms_debug_log'
wp option delete 'd7sms_default_sms_user'
wp option delete 'd7sms_default_sms_pwd'
wp option delete 'd7_recently_activated'
wp option delete 'd7_font_awesome_list'
wp option delete 'd7_dashicons_list'
wp option delete 'd7_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rewrite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rewrite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rewrite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rewrite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_label_singular'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_label_singular'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_label_singular'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_label_singular'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_label_plural'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_label_plural'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_label_plural'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_label_plural'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxonomy_rewrite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxonomy_rewrite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxonomy_rewrite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxonomy_rewrite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_type'"
