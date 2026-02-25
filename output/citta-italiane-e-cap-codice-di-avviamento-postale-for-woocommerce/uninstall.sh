#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcicapfw_disable_zipcode_field'
wp option delete 'wcicapfw_enable_fraction_field'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_billing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_billing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_billing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_billing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_shipping_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_shipping_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_shipping_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shipping_%'"
