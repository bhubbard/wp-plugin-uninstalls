#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_payfam_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payfam_webhook_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payfam_webhook_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payfam_webhook_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payfam_webhook_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payfam_expected_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payfam_expected_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payfam_expected_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payfam_expected_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payfam_account_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payfam_account_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payfam_account_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payfam_account_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payfam_account_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payfam_account_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payfam_account_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payfam_account_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payfam_bank_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payfam_bank_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payfam_bank_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payfam_bank_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payfam_api_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payfam_api_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payfam_api_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payfam_api_response'"
