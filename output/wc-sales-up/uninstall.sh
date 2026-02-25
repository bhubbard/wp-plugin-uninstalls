#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsp_on_product_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsp_cho'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsp_cho'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsp_cho'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsp_cho'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsp_tp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsp_tp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsp_tp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsp_tp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsp_aac_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsp_aac_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsp_aac_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsp_aac_products'"
