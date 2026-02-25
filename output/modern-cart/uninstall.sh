#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moderncart_is_onboarding_complete'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_private_link'
wp option delete 'woocommerce_share_key'
wp option delete 'moderncart_version'

# Delete Transients
wp transient delete 'moderncart_redirect_to_onboarding'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
