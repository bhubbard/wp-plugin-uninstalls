#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wrpl-assign-method'
wp option delete 'wrpl-hide_price'
wp option delete 'wrpl-default_list'
wp option delete 'wrpl_plugin_version'
wp option delete 'wrpl_plugin_license'
wp option delete 'wrpl-format-price-method'
wp option delete 'wrpl-custom_msg_no_login_user'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wrpl-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wrpl_role-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wrpl_cat_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
