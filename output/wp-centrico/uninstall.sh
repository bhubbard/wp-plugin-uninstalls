#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'centrico_woocommerce_checkbox'
wp option delete 'centrico_woocommerce_checkboxautocheck'
wp option delete 'centrico_woocommerce_checkboxlabel'
wp option delete 'centrico_woocommerce_fields'
wp option delete 'centrico_woocommerce_list_id'
wp option delete 'centrico_woocommerce_groups_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'centrico_centrico_woocommerce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'centrico_centrico_woocommerce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'centrico_centrico_woocommerce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'centrico_centrico_woocommerce'"
