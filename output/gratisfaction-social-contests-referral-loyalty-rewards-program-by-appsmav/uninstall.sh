#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grappsmav_appid'
wp option delete 'grappsmav_payload'
wp option delete 'grappsmav_shop_id'
wp option delete 'grappsmav_register'
wp option delete 'grappsmav_admin_email'
wp option delete 'woocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_embed_landing_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_embed_landing_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_embed_landing_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_embed_landing_url'"
