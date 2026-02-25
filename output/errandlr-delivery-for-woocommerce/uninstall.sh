#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_errandlr_delivery_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'errandlr_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'errandlr_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'errandlr_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'errandlr_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'errandlr_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'errandlr_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'errandlr_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'errandlr_request'"
