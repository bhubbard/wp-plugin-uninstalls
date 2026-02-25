#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'invoice_link_woocommerce_view_invoice_text'
wp option delete 'invoice_link_woocommerce_custom_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_invoice_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_invoice_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_invoice_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_invoice_url'"
