#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'darven_epi_option_compatibility'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'darven_epi_option_%'"
wp option delete 'darven_epi_option_positions'
wp option delete 'darven_epi_option_general'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_darven_epi_is_incash_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_darven_epi_is_incash_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_darven_epi_is_incash_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_darven_epi_is_incash_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_darven_epi_is_installment_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_darven_epi_is_installment_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_darven_epi_is_installment_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_darven_epi_is_installment_enabled'"
