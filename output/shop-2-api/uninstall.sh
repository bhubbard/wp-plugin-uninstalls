#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shop2api_token'
wp option delete 'shop2api_connection_succeeded'
wp option delete 'shop2api_bol_connection_succeeded'
wp option delete 'shop2api_wc_connection_succeeded'
wp option delete 'woocommerce_category_field'
wp option delete 'shop2api_email'
wp option delete 'ean-number'
wp option delete 'shop2api_sync_to_bol'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shop2api_sync_to_bol'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shop2api_sync_to_bol'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shop2api_sync_to_bol'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shop2api_sync_to_bol'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shop2api_koopblok_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shop2api_koopblok_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shop2api_koopblok_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shop2api_koopblok_service'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shop2api_ean_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shop2api_ean_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shop2api_ean_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shop2api_ean_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shop2api_combi_ean_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shop2api_combi_ean_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shop2api_combi_ean_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shop2api_combi_ean_number'"
