#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_new_order_settings'
wp option delete 'woocommerce_fonepay_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Fonepay Trace Id (Trace ID) '"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Fonepay Trace Id (Trace ID) '"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Fonepay Trace Id (Trace ID) '"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Fonepay Trace Id (Trace ID) '"
