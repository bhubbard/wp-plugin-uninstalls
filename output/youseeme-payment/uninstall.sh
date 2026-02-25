#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'youseeme_cryptocurrencies'
wp option delete 'youseeme_ibans'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youseeme_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youseeme_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youseeme_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youseeme_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youseeme_crypto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youseeme_crypto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youseeme_crypto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youseeme_crypto'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youseeme_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youseeme_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youseeme_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youseeme_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youseeme_iban_bank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youseeme_iban_bank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youseeme_iban_bank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youseeme_iban_bank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youseeme_iban_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youseeme_iban_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youseeme_iban_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youseeme_iban_total'"
