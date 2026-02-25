#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woosc_settings'
wp option delete 'woosc_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woosc_list_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woosc_hash_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woosc_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'
wp transient delete 'woosc_get_product_meta_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosc_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosc_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosc_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosc_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'woosc_fields_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'woosc_fields_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'woosc_fields_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woosc_fields_%'"
