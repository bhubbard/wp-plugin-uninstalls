#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_product_tabs_made_fields_translatable'
wp option delete 'wpt_options'
wp option delete 'woocommerce-product-tabs-setup-wizard_completed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpt_override_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpt_override_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpt_override_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpt_override_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_conditions_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_conditions_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_conditions_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_conditions_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_display_tab_globally'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_display_tab_globally'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_display_tab_globally'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_display_tab_globally'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_option_use_default_for_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_option_use_default_for_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_option_use_default_for_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_option_use_default_for_all'"
