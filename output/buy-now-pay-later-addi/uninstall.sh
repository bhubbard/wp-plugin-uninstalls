#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_addi_settings'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp transient delete 'fx_addi_admin_notice_transient'
wp transient delete 'buy-now-pay-later-addi'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'addi_wc_version_warning_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'addi_wc_version_warning_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'addi_wc_version_warning_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'addi_wc_version_warning_dismissed'"
