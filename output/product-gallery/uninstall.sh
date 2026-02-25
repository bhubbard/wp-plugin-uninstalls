#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpds_tax_pic%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'product_page%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newprod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newprod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newprod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newprod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'galleryurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'galleryurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'galleryurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'galleryurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prodshortdesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prodshortdesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prodshortdesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prodshortdesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prodrate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prodrate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prodrate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prodrate'"
