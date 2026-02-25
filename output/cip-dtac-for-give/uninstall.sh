#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dtac_give_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_payment_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_payment_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_payment_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_payment_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtac_give_access_to_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtac_give_access_to_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtac_give_access_to_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtac_give_access_to_content'"
