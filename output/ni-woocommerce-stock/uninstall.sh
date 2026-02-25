#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'niwoostock_setting'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_notify_no_stock_amount'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ni_outofstock_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ni_outofstock_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ni_outofstock_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ni_outofstock_notes'"
