#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_softtech_bkash_settings'
wp option delete 'sms-api-url'
wp option delete 'sms-api-username'
wp option delete 'sms-api-password'
wp option delete 'nagad_rq_code_image'
wp option delete 'woocommerce_softtech_nagad_settings'
wp option delete 'roket_rq_code_image'
wp option delete 'woocommerce_softtech_rocket_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bkash_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bkash_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bkash_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bkash_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bkash_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bkash_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bkash_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bkash_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nagad_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nagad_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nagad_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nagad_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nagad_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nagad_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nagad_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nagad_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rocket_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rocket_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rocket_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rocket_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rocket_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rocket_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rocket_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rocket_transaction'"
