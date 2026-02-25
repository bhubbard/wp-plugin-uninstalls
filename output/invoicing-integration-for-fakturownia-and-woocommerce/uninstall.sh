#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'devikit_fakturownia_banner_dismissed'
wp option delete 'devikit_fakturownia_banner_remind_later'
wp option delete 'devikit_fakturownia_settings'
wp option delete 'devikit_fakturownia_pro_settings'
wp option delete 'devikit_fakturownia_warehouse_settings'
wp option delete 'devikit_fakturownia_keep_data_on_uninstall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fakturownia_gtu_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fakturownia_gtu_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fakturownia_gtu_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fakturownia_gtu_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fakturownia_pkwiu_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fakturownia_pkwiu_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fakturownia_pkwiu_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fakturownia_pkwiu_code'"
