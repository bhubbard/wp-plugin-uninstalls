#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hookit_recommended_products_viewtitle'
wp option delete 'hookit_recommended_products_viewproducts'
wp option delete 'hookit_recommended_products_token'
wp option delete 'hookit_recommended_products_categories'
wp option delete 'hookit_recommended_products_sign'
wp option delete 'hookit_recommended_products_gender'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hookit_recommended_products_%' OR option_name LIKE '_site_transient_hookit_recommended_products_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hookit_recommended_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hookit_recommended_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hookit_recommended_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hookit_recommended_products'"
