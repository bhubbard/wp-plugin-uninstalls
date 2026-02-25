#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocr_settings'
wp option delete 'woocr_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocr_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocr_orderby'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocr_orderby'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocr_orderby'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocr_orderby'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocr_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocr_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocr_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocr_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocr_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocr_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocr_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocr_ids'"
