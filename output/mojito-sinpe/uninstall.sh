#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mojito_sinpe_debug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sinpe-number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sinpe-number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sinpe-number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sinpe-number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mojito_sinpe_bank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mojito_sinpe_bank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mojito_sinpe_bank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mojito_sinpe_bank'"
