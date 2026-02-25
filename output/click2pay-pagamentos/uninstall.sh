#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_base_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_click2pay_card_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_click2pay_card_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_click2pay_card_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_click2pay_card_id'"
