#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpremed_currency_symbol'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simpremed_quantities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simpremed_quantities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simpremed_quantities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simpremed_quantities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simpremed_is_special'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simpremed_is_special'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simpremed_is_special'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simpremed_is_special'"
