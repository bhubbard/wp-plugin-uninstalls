#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'robokassa_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'robokassa_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'robokassa_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'robokassa_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'robokassa_disable_second_receipt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'robokassa_disable_second_receipt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'robokassa_disable_second_receipt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'robokassa_disable_second_receipt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'robokassa_OpKey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'robokassa_OpKey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'robokassa_OpKey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'robokassa_OpKey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'robokassa_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'robokassa_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'robokassa_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'robokassa_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'robokassa_fake_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'robokassa_fake_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'robokassa_fake_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'robokassa_fake_order'"
