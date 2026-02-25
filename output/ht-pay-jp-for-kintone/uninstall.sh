#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ht_pay_jp_for_kintone_test_secret_key'
wp option delete 'ht_pay_jp_for_kintone_test_public_key'
wp option delete 'ht_pay_jp_for_kintone_live_secret_key'
wp option delete 'ht_pay_jp_for_kintone_live_public_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ht_payjpforkintone_setting_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ht_payjpforkintone_setting_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ht_payjpforkintone_setting_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ht_payjpforkintone_setting_data'"
