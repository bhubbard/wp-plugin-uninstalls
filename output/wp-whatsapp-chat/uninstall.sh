#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whatsapp_chat_page'
wp option delete 'whatsapp_chat_button'
wp option delete 'whatsapp_chat_powered_by'
wp option delete 'whatsapp_chat_round'
wp option delete 'whatsapp_chat_down'
wp option delete 'whatsapp_chat_left_side'
wp option delete 'whatsapp_chat_msg'
wp option delete 'whatsapp_chat_mobile'
wp option delete 'whatsapp_chat_hide_button'
wp option delete 'whatsapp_chat_hide_post'
wp option delete 'whatsapp_chat_hide_page'
wp option delete 'whatsapp_chat_dark'
wp option delete 'whatsapp_chat_white'
wp option delete 'qlwapp'
wp option delete 'jetpack_protect_active'
wp option delete 'jetpack_offline_mode'
wp option delete 'wpcom_public_coming_soon'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'qlwapp_box'
wp option delete 'qlwapp_button'
wp option delete 'qlwapp_contacts'
wp option delete 'qlwapp_display'
wp option delete 'qlwapp_scheme'
wp option delete 'qlwapp_settings'
wp option delete 'qlwapp_woocommerce'

# Delete Transients
wp transient delete 'jetpack_is_single_user'
wp transient delete 'quadlayers_news_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ql_plugin_feedback_%' OR option_name LIKE '_site_transient_ql_plugin_feedback_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qlwapp-user-rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qlwapp-user-rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qlwapp-user-rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qlwapp-user-rating'"
