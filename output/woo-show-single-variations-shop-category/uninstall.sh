#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmwsvs_enable_setting'
wp option delete 'gmwsvs_hide_parent_product'
wp option delete 'gmwsvs_exclude_cat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wssvsc_custom_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wssvsc_custom_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wssvsc_custom_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wssvsc_custom_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wssvsc_excludeenalls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wssvsc_excludeenalls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wssvsc_excludeenalls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wssvsc_excludeenalls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gmwsvs_is_tax_setup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gmwsvs_is_tax_setup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gmwsvs_is_tax_setup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gmwsvs_is_tax_setup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wwsvsc_exclude_product_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wwsvsc_exclude_product_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wwsvsc_exclude_product_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wwsvsc_exclude_product_single'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wwsvsc_exclude_product_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wwsvsc_exclude_product_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wwsvsc_exclude_product_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wwsvsc_exclude_product_parent'"
