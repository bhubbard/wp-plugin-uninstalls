#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lii-ajaxcart_do_activation_redirect'
wp option delete 'lii-ajaxcart_installed'
wp option delete 'lii-ajaxcart_version'
wp option delete 'lii_ajaxcart_woocommerce_cart_redirect_after_add'
wp option delete 'recently_activated'
wp option delete 'Lii-ajax-add-to-cart-option'
wp option delete 'Lii-ajax-single-product-page-add-to-cart-option'
wp option delete 'Lii-showing-product-quantity-box-option'
wp option delete 'Lii-cart-order-option'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
