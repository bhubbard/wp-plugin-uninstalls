#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'onvo_last_order_number'
wp option delete 'onvo_last_order_number_subs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_onvo_payment_method_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_onvo_payment_method_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_onvo_payment_method_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_onvo_payment_method_id'"
