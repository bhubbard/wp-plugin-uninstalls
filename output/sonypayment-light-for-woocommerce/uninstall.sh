#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_sonypayment-light_cvs_settings'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_sonypayment-light_settings'
wp option delete 'spfwc_cvs_settlement_fees'
wp option delete 'wc4jp-yomigana'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spfwc_member_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spfwc_member_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spfwc_member_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spfwc_member_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_spfwc_member_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_spfwc_member_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_spfwc_member_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_spfwc_member_pass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_name_kana'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_name_kana'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_name_kana'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_name_kana'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_name_kana'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_name_kana'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_name_kana'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_name_kana'"
