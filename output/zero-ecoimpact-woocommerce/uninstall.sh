#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_zei-wc_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zei_reward'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zei_reward'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zei_reward'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zei_reward'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zei_offer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zei_offer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zei_offer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zei_offer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zei_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zei_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zei_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zei_profile'"
