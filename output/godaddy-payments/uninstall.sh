#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_poynt_webhookSecret'
wp option delete 'godaddy_payments_has_invalid_country_code'
wp option delete 'wc_poynt_appId'
wp option delete 'wc_poynt_serviceId'
wp option delete 'wc_poynt_businessId'
wp option delete 'wc_poynt_storeId'
wp option delete 'wc_poynt_payinperson_terminal_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_poynt-collect_settings'
wp option delete 'woocommerce_poynt_credit_card_settings'
wp option delete 'wc_poynt_webhooksRegistered'
wp option delete 'woocommerce_email_footer_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_milestone_version'"
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_default_country'
wp option delete 'sv_wc_apple_pay_cert_path'
wp option delete 'sv_wc_apple_pay_merchant_id'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_migrated'"
