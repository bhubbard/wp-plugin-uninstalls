#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdfi_flake_image_type_enable'
wp option delete 'wdfi_flake_image_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdfi_addnewrule_posttype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdfi_addnewrule_posttype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdfi_addnewrule_posttype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdfi_addnewrule_posttype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdfi_shop_taxo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdfi_shop_taxo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdfi_shop_taxo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdfi_shop_taxo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wdfi_flake_image_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wdfi_flake_image_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wdfi_flake_image_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wdfi_flake_image_type'"
