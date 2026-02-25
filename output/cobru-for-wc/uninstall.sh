#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cobru_settings'
wp option delete 'woocommerce_cobru-direct_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'document_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'document_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'document_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'document_number'"
