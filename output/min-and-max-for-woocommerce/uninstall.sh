#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmfwc_options_option_name'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'mmfwc_installed'
wp option delete 'mmfwc_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mmfwc_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mmfwc_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mmfwc_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mmfwc_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mmfwc_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mmfwc_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mmfwc_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mmfwc_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mmfwc_prd_opt_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mmfwc_prd_opt_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mmfwc_prd_opt_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mmfwc_prd_opt_enable'"
