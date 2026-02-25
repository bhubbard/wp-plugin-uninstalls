#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quantity_global_args'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quantity_var_args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quantity_var_args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quantity_var_args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quantity_var_args'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quantity_args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quantity_args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quantity_args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quantity_args'"
