#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'globalpayments_plugin_deferred_admin_notices'
wp option delete 'woocommerce_globalpayments_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_globalpayments_payment_captured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_globalpayments_payment_captured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_globalpayments_payment_captured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_globalpayments_payment_captured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_globalpayments_payment_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_globalpayments_payment_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_globalpayments_payment_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_globalpayments_payment_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_securesubmit_used_card_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_securesubmit_used_card_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_securesubmit_used_card_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_securesubmit_used_card_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_securesubmit_original_reported_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_securesubmit_original_reported_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_securesubmit_original_reported_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_securesubmit_original_reported_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_billing_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_billing_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_billing_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_billing_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_payer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_payer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_payer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_payer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_shipping_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_shipping_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_shipping_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_shipping_address'"
