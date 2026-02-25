#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gravityformsaddon_gravityformsqualpay_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_payment_profiles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_card_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_currencies'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gravityformsaddon_qualpay_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gravityformsaddon_qualpay_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gravityformsaddon_qualpay_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gravityformsaddon_qualpay_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gravityformsaddon_qualpay_billing_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gravityformsaddon_qualpay_billing_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gravityformsaddon_qualpay_billing_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gravityformsaddon_qualpay_billing_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gravityformsaddon_qualpay_billing_card_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gravityformsaddon_qualpay_billing_card_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gravityformsaddon_qualpay_billing_card_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gravityformsaddon_qualpay_billing_card_default'"
