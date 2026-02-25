#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buy_button_plus_cart_id'
wp option delete 'buy_button_plus_cart_access_validated'
wp option delete 'buy_button_plus_buttons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buy_button_plus_warning_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buy_button_plus_warning_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buy_button_plus_warning_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buy_button_plus_warning_dismissed'"
