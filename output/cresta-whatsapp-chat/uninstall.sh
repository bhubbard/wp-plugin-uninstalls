#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crestawhatsappchat_settings'
wp option delete 'woocommerce_shop_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_get_cresta_whatsapp_chat_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_get_cresta_whatsapp_chat_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_get_cresta_whatsapp_chat_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_get_cresta_whatsapp_chat_plugin'"
