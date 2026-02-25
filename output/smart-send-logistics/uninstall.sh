#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ss_hs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ss_hs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ss_hs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ss_hs_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ss_customs_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ss_customs_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ss_customs_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ss_customs_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ss_country_of_origin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ss_country_of_origin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ss_country_of_origin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ss_country_of_origin'"
