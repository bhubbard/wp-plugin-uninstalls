#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_version'"
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_default_country'
wp option delete 'sv_wc_apple_pay_cert_path'
wp option delete 'sv_wc_apple_pay_merchant_id'
wp option delete 'woocommerce_calc_shipping'

# Delete Transients
wp transient delete 'payarc_account_settings'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_migrated'"
