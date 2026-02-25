#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_eway_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eway_token_cards'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eway_token_cards'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eway_token_cards'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eway_token_cards'"
