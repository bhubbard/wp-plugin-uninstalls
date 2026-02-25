#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_product_cat'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cmfwc_categories_%' OR option_name LIKE '_site_transient_cmfwc_categories_%'"
wp transient delete 'cmfwc_category_dropdown'
wp transient delete 'cmfwc_categories_0'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cmfwc_deleted_category_%' OR option_name LIKE '_site_transient_cmfwc_deleted_category_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cmfwc_deleted_category_parent_%' OR option_name LIKE '_site_transient_cmfwc_deleted_category_parent_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmfwc_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmfwc_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmfwc_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmfwc_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
