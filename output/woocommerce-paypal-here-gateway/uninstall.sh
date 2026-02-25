#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_version'"
wp option delete 'active_sitewide_plugins'
wp option delete 'sv_wc_apple_pay_cert_path'
wp option delete 'sv_wc_apple_pay_display_locations'
wp option delete 'woocommerce_default_country'
wp option delete 'sv_wc_apple_pay_enabled'
wp option delete 'sv_wc_apple_pay_test_mode'
wp option delete 'sv_wc_apple_pay_merchant_id'
wp option delete 'sv_wc_apple_pay_payment_gateway'
wp option delete 'sv_wc_apple_pay_button_style'
wp option delete 'woocommerce_calc_shipping'

# Delete Transients
wp transient delete 'sv_wc_plugin_wc_versions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%payment_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%payment_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%payment_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%payment_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%customer_id'"
