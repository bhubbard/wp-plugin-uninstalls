#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'descrb_custom_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'descrb_selected_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'descrb_selected_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'descrb_selected_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'descrb_selected_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_brand'"
