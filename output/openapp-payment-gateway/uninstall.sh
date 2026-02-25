#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_openapp_settings'
wp option delete 'woocommerce_version'
wp option delete 'openappgw_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cost'"
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Delete Transients
wp transient delete 'openappgw_sse_supported'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oa_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oa_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oa_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oa_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oaOrderId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oaOrderId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oaOrderId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oaOrderId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paczkomat_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paczkomat_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paczkomat_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paczkomat_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Wybrany paczkomat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Wybrany paczkomat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Wybrany paczkomat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Wybrany paczkomat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oa_auth_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oa_auth_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oa_auth_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oa_auth_token'"
