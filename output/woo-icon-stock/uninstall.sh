#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tx_rupture'
wp option delete 'tx_faible'
wp option delete 'tx_ok'
wp option delete 'qt_faible'
wp option delete 'icon_woo_stock_1'
wp option delete 'woocommerce_stock_format'
wp option delete 'woo-icon-stock-custom'
wp option delete 'upload_icon_stock'
wp option delete 'upload_icon_stock_faible'
wp option delete 'upload_icon_stock_ok'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_icon_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_icon_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_icon_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_icon_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_icon_stock_seuil'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_icon_stock_seuil'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_icon_stock_seuil'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_icon_stock_seuil'"
