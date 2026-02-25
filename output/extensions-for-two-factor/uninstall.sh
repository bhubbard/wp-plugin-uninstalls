#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'two_factor_extensions_basics'
wp option delete 'two_factor_extensions_debug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile'"
