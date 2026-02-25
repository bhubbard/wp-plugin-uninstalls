#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glideffxf_data_install'
wp option delete 'skuautoffxf_letters_and_numbers'
wp option delete 'skuautoffxf_auto_number'
wp option delete 'skuautoffxf_auto_prefix'
wp option delete 'skuautoffxf_auto_ID'
wp option delete 'skuautoffxf_previous'
wp option delete 'skuautoffxf_suffix'
wp option delete 'skuautoffxf_number_dop'
wp option delete 'skuautoffxf_variation_separator'
wp option delete 'skuautoffxf_auto_variant'
wp option delete 'skuautoffxf_duplicate_sku'
wp option delete 'skuautoffxf_variation_settings'
wp option delete 'skuautoffxf_format_an'
wp option delete 'my_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
